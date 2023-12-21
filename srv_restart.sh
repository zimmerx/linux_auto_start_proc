#!/bin/bash

 if  [[ $(sudo systemctl status docker.service | grep running | awk -F: '{print $1}') == *Active* ]];
then 
echo "Service is running"   
else 
echo "Service is NOT running, initiating start..."
sleep 2
sudo systemctl start docker.service
sleep 2
echo "Service is Started"
echo " Checking the status again"
sleep 4
[[ $(sudo systemctl status docker.service | grep running | awk -F: '{print $1}') == *Active* ]]
echo "Service is running" 
fi
