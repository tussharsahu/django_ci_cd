#!/bin/bash

    python3 -m venv env


source env/bin/activate


pip3 install -r requirements.txt

if [ -d "logs" ] 
then
    echo "Log folder exists." 
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

echo 4411 | sudo -S chmod -R 777 logs

