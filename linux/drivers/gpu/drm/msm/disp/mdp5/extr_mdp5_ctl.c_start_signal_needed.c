
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_pipeline {struct mdp5_interface* intf; } ;
struct mdp5_interface {int type; int mode; } ;
struct mdp5_ctl {int encoder_enabled; } ;




 int MDP5_INTF_DSI_MODE_COMMAND ;

__attribute__((used)) static bool start_signal_needed(struct mdp5_ctl *ctl,
    struct mdp5_pipeline *pipeline)
{
 struct mdp5_interface *intf = pipeline->intf;

 if (!ctl->encoder_enabled)
  return 0;

 switch (intf->type) {
 case 128:
  return 1;
 case 129:
  return intf->mode == MDP5_INTF_DSI_MODE_COMMAND;
 default:
  return 0;
 }
}
