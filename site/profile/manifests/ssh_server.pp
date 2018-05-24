class profile::ssh_server {
  package {'openssh-server':
          ensure => present,
  }
  service {'sshd':
          ensure => 'running',
          enable => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
          ensure => present,
          user => 'root',
          type => 'ssh-rsa',
          key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDAyWRhAxTU7LFHzvv1wFAx+KVQJQE1P6R0w8u4JkPgJagA4Kb2JSxFhEIipF+pT2V+9MVDXJ5XiLfEhtYP1bK5dyz4v0NPiFvK74MsRIfkg29ur3o677x9mzjxGQco8OnqAqgJANHhzqRKg5dEqwvX4XrR6LFEVZN5EtUtXg8OLZ3cnDowHi/hV4gpTQsyl1XMYNL3CjrZ54eOC7X13sSBPV50L/oaWZ5K6w7f9CKB4cWFOB2SR+zJ4sf8+IYVeFcYHiLXazQhxVk+Zq4/pOSaHh9IavbYUDBHtBuJQ+LR8QkcPwV5jJpaXwsxg1l8rANm9bMo8BPWZDtkCrIHjpGv',
  }
}
  
