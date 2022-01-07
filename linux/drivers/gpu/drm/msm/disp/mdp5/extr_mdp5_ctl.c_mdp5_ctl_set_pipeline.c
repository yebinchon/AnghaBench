
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_pipeline {struct mdp5_interface* intf; } ;
struct mdp5_kms {int dummy; } ;
struct mdp5_interface {int type; } ;
struct mdp5_ctl {int ctlm; } ;


 struct mdp5_kms* get_kms (int ) ;
 int mdp5_cfg_intf_is_virtual (int ) ;
 int set_ctl_op (struct mdp5_ctl*,struct mdp5_pipeline*) ;
 int set_display_intf (struct mdp5_kms*,struct mdp5_interface*) ;

int mdp5_ctl_set_pipeline(struct mdp5_ctl *ctl, struct mdp5_pipeline *pipeline)
{
 struct mdp5_kms *mdp5_kms = get_kms(ctl->ctlm);
 struct mdp5_interface *intf = pipeline->intf;


 if (!mdp5_cfg_intf_is_virtual(intf->type))
  set_display_intf(mdp5_kms, intf);

 set_ctl_op(ctl, pipeline);

 return 0;
}
