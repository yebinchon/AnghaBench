
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_ctl {int id; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;

int mdp5_ctl_get_ctl_id(struct mdp5_ctl *ctl)
{
 return WARN_ON(!ctl) ? -EINVAL : ctl->id;
}
