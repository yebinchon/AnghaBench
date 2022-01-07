
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ iwpm_user_pid ;

int iwpm_valid_pid(void)
{
 return iwpm_user_pid > 0;
}
