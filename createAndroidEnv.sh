#!/bin/sh

cd /home/coding/

mkdir sdk

cd sdk/

wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip

apt install unzip

unzip sdk-tools-linux-4333796.zip

rm sdk-tools-linux-4333796.zip 

cat /home/coding/env.txt >> ~/.bashrc

#Android SDK
export ANDROID_HOME=/home/coding/sdk
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$PATH

#Android Ndk
export PATH="$PATH:$ANDROID_HOME/ndk-bundle"

#source ~/.bashrc

sdkmanager "platforms;android-19" "platforms;android-20" "platforms;android-21" "platforms;android-22" "platforms;android-23" "platforms;android-24" "platforms;android-25" "platforms;android-26" "platforms;android-27" "platforms;android-28" "platforms;android-29"
