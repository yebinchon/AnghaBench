
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_pipeline {int dummy; } ;
struct mdp5_kms {int base; } ;
struct mdp5_interface {int num; } ;
struct mdp5_hw_mixer {int dummy; } ;
struct mdp5_encoder {int enabled; int intf_lock; struct mdp5_interface* intf; struct mdp5_ctl* ctl; } ;
struct mdp5_ctl {int dummy; } ;
struct drm_encoder {int crtc; } ;


 int REG_MDP5_INTF_TIMING_ENGINE_EN (int) ;
 scalar_t__ WARN_ON (int) ;
 int bs_set (struct mdp5_encoder*,int ) ;
 struct mdp5_kms* get_kms (struct drm_encoder*) ;
 int intf2vblank (struct mdp5_hw_mixer*,struct mdp5_interface*) ;
 struct mdp5_hw_mixer* mdp5_crtc_get_mixer (int ) ;
 struct mdp5_pipeline* mdp5_crtc_get_pipeline (int ) ;
 int mdp5_ctl_commit (struct mdp5_ctl*,struct mdp5_pipeline*,int ,int) ;
 int mdp5_ctl_set_encoder_state (struct mdp5_ctl*,struct mdp5_pipeline*,int) ;
 int mdp5_write (struct mdp5_kms*,int ,int ) ;
 int mdp_ctl_flush_mask_encoder (struct mdp5_interface*) ;
 int mdp_irq_wait (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mdp5_encoder* to_mdp5_encoder (struct drm_encoder*) ;

__attribute__((used)) static void mdp5_vid_encoder_disable(struct drm_encoder *encoder)
{
 struct mdp5_encoder *mdp5_encoder = to_mdp5_encoder(encoder);
 struct mdp5_kms *mdp5_kms = get_kms(encoder);
 struct mdp5_ctl *ctl = mdp5_encoder->ctl;
 struct mdp5_pipeline *pipeline = mdp5_crtc_get_pipeline(encoder->crtc);
 struct mdp5_hw_mixer *mixer = mdp5_crtc_get_mixer(encoder->crtc);
 struct mdp5_interface *intf = mdp5_encoder->intf;
 int intfn = mdp5_encoder->intf->num;
 unsigned long flags;

 if (WARN_ON(!mdp5_encoder->enabled))
  return;

 mdp5_ctl_set_encoder_state(ctl, pipeline, 0);

 spin_lock_irqsave(&mdp5_encoder->intf_lock, flags);
 mdp5_write(mdp5_kms, REG_MDP5_INTF_TIMING_ENGINE_EN(intfn), 0);
 spin_unlock_irqrestore(&mdp5_encoder->intf_lock, flags);
 mdp5_ctl_commit(ctl, pipeline, mdp_ctl_flush_mask_encoder(intf), 1);
 mdp_irq_wait(&mdp5_kms->base, intf2vblank(mixer, intf));

 bs_set(mdp5_encoder, 0);

 mdp5_encoder->enabled = 0;
}
