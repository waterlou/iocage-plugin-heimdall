#!/bin/sh

APP_PATH=/usr/local/share/heimdall

mkdir -p ${APP_PATH}
cd ${APP_PATH}

git clone https://github.com/linuxserver/Heimdall.git .

composer install --no-dev

chown -R www:www ${APP_PATH}

php artisan key:generate
