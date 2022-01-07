
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_pipeline {struct mdp5_interface* intf; } ;
struct mdp5_interface {int num; } ;
struct mdp5_ctl {int encoder_enabled; } ;


 int DBG (char*,int ,char*) ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int send_start_signal (struct mdp5_ctl*) ;
 scalar_t__ start_signal_needed (struct mdp5_ctl*,struct mdp5_pipeline*) ;

int mdp5_ctl_set_encoder_state(struct mdp5_ctl *ctl,
          struct mdp5_pipeline *pipeline,
          bool enabled)
{
 struct mdp5_interface *intf = pipeline->intf;

 if (WARN_ON(!ctl))
  return -EINVAL;

 ctl->encoder_enabled = enabled;
 DBG("intf_%d: %s", intf->num, enabled ? "on" : "off");

 if (start_signal_needed(ctl, pipeline)) {
  send_start_signal(ctl);
 }

 return 0;
}
