system_name=`uname -s` # Sets 'Darwin' or 'Linux' etc

source ~/.exports
source ~/.gitrc
source ~/.aliases
source ~/.save-directory

if [ $system_name == 'Darwin' ]; then
  source ~/.gemdoc
  source ~/.terminal
else
  if [ -f /etc/bash_completion ]; then
      . /etc/bash_completion
  fi
fi

export PS1=' [`pwd`$(__git_ps1 " \[${COLOR_RED}\](%s)\[${COLOR_NC}\]")]\n$ '

function __pair_status {
  hitchstatus " %s";
}

# readline settings
bind "set completion-ignore-case on" 
bind "set bell-style none" # No bell, because it's damn annoying
bind "set show-all-if-ambiguous On" # this allows you to automatically show completion without double tab-ing

shopt -s checkwinsize
shopt -s histappend
shopt -s globstar

complete -C ~/.rake-completion.rb -o default rake}
if [ -f ~/.rvm/bin/rvm ] ; then source ~/.rvm/bin/rvm ; fi
