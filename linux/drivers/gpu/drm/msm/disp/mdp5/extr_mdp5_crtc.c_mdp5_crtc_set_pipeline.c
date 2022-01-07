
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_kms {int base; } ;
struct mdp5_crtc_state {int pipeline; int ctl; } ;
struct drm_crtc {int state; } ;


 struct mdp5_kms* get_kms (struct drm_crtc*) ;
 int mdp5_ctl_set_pipeline (int ,int *) ;
 int mdp_irq_update (int *) ;
 struct mdp5_crtc_state* to_mdp5_crtc_state (int ) ;

void mdp5_crtc_set_pipeline(struct drm_crtc *crtc)
{
 struct mdp5_crtc_state *mdp5_cstate = to_mdp5_crtc_state(crtc->state);
 struct mdp5_kms *mdp5_kms = get_kms(crtc);


 mdp_irq_update(&mdp5_kms->base);

 mdp5_ctl_set_pipeline(mdp5_cstate->ctl, &mdp5_cstate->pipeline);
}
