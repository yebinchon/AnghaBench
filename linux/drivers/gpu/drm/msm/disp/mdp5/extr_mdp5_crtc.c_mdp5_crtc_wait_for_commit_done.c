
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_crtc_state {scalar_t__ cmd_mode; } ;
struct drm_crtc {int state; } ;


 int mdp5_crtc_wait_for_flush_done (struct drm_crtc*) ;
 int mdp5_crtc_wait_for_pp_done (struct drm_crtc*) ;
 struct mdp5_crtc_state* to_mdp5_crtc_state (int ) ;

void mdp5_crtc_wait_for_commit_done(struct drm_crtc *crtc)
{
 struct mdp5_crtc_state *mdp5_cstate = to_mdp5_crtc_state(crtc->state);

 if (mdp5_cstate->cmd_mode)
  mdp5_crtc_wait_for_pp_done(crtc);
 else
  mdp5_crtc_wait_for_flush_done(crtc);
}
