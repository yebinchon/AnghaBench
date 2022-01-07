
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mdp5_pipeline {struct mdp5_hw_mixer* mixer; struct mdp5_interface* intf; struct mdp5_hw_mixer* r_mixer; } ;
struct mdp5_interface {scalar_t__ type; scalar_t__ mode; int num; } ;
struct mdp5_hw_mixer {int dummy; } ;
struct mdp5_crtc_state {int cmd_mode; scalar_t__ pp_done_irqmask; int vblank_irqmask; int err_irqmask; struct mdp5_pipeline pipeline; } ;
struct drm_crtc_state {int state; } ;
struct drm_crtc {int dummy; } ;


 scalar_t__ INTF_DSI ;
 scalar_t__ MDP5_INTF_DSI_MODE_COMMAND ;
 int MDP_LM_CAP_DISPLAY ;
 int MDP_LM_CAP_PAIR ;
 int intf2err (int ) ;
 int intf2vblank (struct mdp5_hw_mixer*,struct mdp5_interface*) ;
 scalar_t__ lm2ppdone (struct mdp5_hw_mixer*) ;
 int mdp5_mixer_assign (int ,struct drm_crtc*,int ,struct mdp5_hw_mixer**,struct mdp5_hw_mixer**) ;
 int mdp5_mixer_release (int ,struct mdp5_hw_mixer*) ;
 struct mdp5_crtc_state* to_mdp5_crtc_state (struct drm_crtc_state*) ;

int mdp5_crtc_setup_pipeline(struct drm_crtc *crtc,
        struct drm_crtc_state *new_crtc_state,
        bool need_right_mixer)
{
 struct mdp5_crtc_state *mdp5_cstate =
   to_mdp5_crtc_state(new_crtc_state);
 struct mdp5_pipeline *pipeline = &mdp5_cstate->pipeline;
 struct mdp5_interface *intf;
 bool new_mixer = 0;

 new_mixer = !pipeline->mixer;

 if ((need_right_mixer && !pipeline->r_mixer) ||
     (!need_right_mixer && pipeline->r_mixer))
  new_mixer = 1;

 if (new_mixer) {
  struct mdp5_hw_mixer *old_mixer = pipeline->mixer;
  struct mdp5_hw_mixer *old_r_mixer = pipeline->r_mixer;
  u32 caps;
  int ret;

  caps = MDP_LM_CAP_DISPLAY;
  if (need_right_mixer)
   caps |= MDP_LM_CAP_PAIR;

  ret = mdp5_mixer_assign(new_crtc_state->state, crtc, caps,
     &pipeline->mixer, need_right_mixer ?
     &pipeline->r_mixer : ((void*)0));
  if (ret)
   return ret;

  mdp5_mixer_release(new_crtc_state->state, old_mixer);
  if (old_r_mixer) {
   mdp5_mixer_release(new_crtc_state->state, old_r_mixer);
   if (!need_right_mixer)
    pipeline->r_mixer = ((void*)0);
  }
 }





 intf = pipeline->intf;

 mdp5_cstate->err_irqmask = intf2err(intf->num);
 mdp5_cstate->vblank_irqmask = intf2vblank(pipeline->mixer, intf);

 if ((intf->type == INTF_DSI) &&
     (intf->mode == MDP5_INTF_DSI_MODE_COMMAND)) {
  mdp5_cstate->pp_done_irqmask = lm2ppdone(pipeline->mixer);
  mdp5_cstate->cmd_mode = 1;
 } else {
  mdp5_cstate->pp_done_irqmask = 0;
  mdp5_cstate->cmd_mode = 0;
 }

 return 0;
}
