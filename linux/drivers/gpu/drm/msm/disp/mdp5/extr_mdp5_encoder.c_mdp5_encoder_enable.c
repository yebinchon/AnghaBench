
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdp5_interface {scalar_t__ mode; } ;
struct mdp5_encoder {struct mdp5_interface* intf; } ;
struct drm_encoder {TYPE_1__* crtc; } ;
struct drm_crtc_state {int adjusted_mode; int mode; } ;
struct TYPE_2__ {struct drm_crtc_state* state; } ;


 scalar_t__ MDP5_INTF_DSI_MODE_COMMAND ;
 int mdp5_cmd_encoder_enable (struct drm_encoder*) ;
 int mdp5_encoder_mode_set (struct drm_encoder*,int *,int *) ;
 int mdp5_vid_encoder_enable (struct drm_encoder*) ;
 struct mdp5_encoder* to_mdp5_encoder (struct drm_encoder*) ;

__attribute__((used)) static void mdp5_encoder_enable(struct drm_encoder *encoder)
{
 struct mdp5_encoder *mdp5_encoder = to_mdp5_encoder(encoder);
 struct mdp5_interface *intf = mdp5_encoder->intf;

 struct drm_crtc_state *cstate = encoder->crtc->state;

 mdp5_encoder_mode_set(encoder, &cstate->mode, &cstate->adjusted_mode);

 if (intf->mode == MDP5_INTF_DSI_MODE_COMMAND)
  mdp5_cmd_encoder_enable(encoder);
 else
  mdp5_vid_encoder_enable(encoder);
}
