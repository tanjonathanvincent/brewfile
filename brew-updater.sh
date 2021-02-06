#!/bin/zsh

# Cleanup script for Linuxbrew

brew update
outdated=`brew outdated`
brew upgrade ${outdated}
rm Brewfile
brew bundle dump
brew bundle --force cleanup
