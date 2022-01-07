
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_interface {scalar_t__ type; int mode; } ;
struct mdp5_encoder {struct mdp5_interface* intf; } ;
struct drm_encoder {int dummy; } ;


 scalar_t__ INTF_DSI ;
 int MDP5_INTF_DSI_MODE_COMMAND ;
 int MDP5_INTF_DSI_MODE_VIDEO ;
 int MDP5_INTF_MODE_NONE ;
 int WARN_ON (int) ;
 struct mdp5_encoder* to_mdp5_encoder (struct drm_encoder*) ;

void mdp5_encoder_set_intf_mode(struct drm_encoder *encoder, bool cmd_mode)
{
 struct mdp5_encoder *mdp5_encoder = to_mdp5_encoder(encoder);
 struct mdp5_interface *intf = mdp5_encoder->intf;


 if (cmd_mode) {
  WARN_ON(intf->type != INTF_DSI);
  intf->mode = MDP5_INTF_DSI_MODE_COMMAND;
 } else {
  if (intf->type == INTF_DSI)
   intf->mode = MDP5_INTF_DSI_MODE_VIDEO;
  else
   intf->mode = MDP5_INTF_MODE_NONE;
 }
}
