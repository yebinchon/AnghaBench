
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_pipeline {int dummy; } ;
struct mdp5_interface {int dummy; } ;
struct mdp5_encoder {int enabled; struct mdp5_interface* intf; struct mdp5_ctl* ctl; } ;
struct mdp5_ctl {int dummy; } ;
struct drm_encoder {int crtc; } ;


 scalar_t__ WARN_ON (int) ;
 int bs_set (struct mdp5_encoder*,int) ;
 struct mdp5_pipeline* mdp5_crtc_get_pipeline (int ) ;
 int mdp5_ctl_commit (struct mdp5_ctl*,struct mdp5_pipeline*,int ,int) ;
 int mdp5_ctl_set_encoder_state (struct mdp5_ctl*,struct mdp5_pipeline*,int) ;
 int mdp_ctl_flush_mask_encoder (struct mdp5_interface*) ;
 scalar_t__ pingpong_tearcheck_enable (struct drm_encoder*) ;
 struct mdp5_encoder* to_mdp5_encoder (struct drm_encoder*) ;

void mdp5_cmd_encoder_enable(struct drm_encoder *encoder)
{
 struct mdp5_encoder *mdp5_cmd_enc = to_mdp5_encoder(encoder);
 struct mdp5_ctl *ctl = mdp5_cmd_enc->ctl;
 struct mdp5_interface *intf = mdp5_cmd_enc->intf;
 struct mdp5_pipeline *pipeline = mdp5_crtc_get_pipeline(encoder->crtc);

 if (WARN_ON(mdp5_cmd_enc->enabled))
  return;

 bs_set(mdp5_cmd_enc, 1);
 if (pingpong_tearcheck_enable(encoder))
  return;

 mdp5_ctl_commit(ctl, pipeline, mdp_ctl_flush_mask_encoder(intf), 1);

 mdp5_ctl_set_encoder_state(ctl, pipeline, 1);

 mdp5_cmd_enc->enabled = 1;
}
