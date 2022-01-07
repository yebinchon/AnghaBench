
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_ctl_manager {int dummy; } ;


 int kfree (struct mdp5_ctl_manager*) ;

void mdp5_ctlm_destroy(struct mdp5_ctl_manager *ctl_mgr)
{
 kfree(ctl_mgr);
}
