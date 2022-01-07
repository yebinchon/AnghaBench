
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_pipeline {int dummy; } ;
struct mdp5_crtc_state {struct mdp5_pipeline pipeline; } ;
struct drm_crtc {int state; } ;


 int EINVAL ;
 struct mdp5_pipeline* ERR_PTR (int ) ;
 scalar_t__ WARN_ON (int) ;
 struct mdp5_crtc_state* to_mdp5_crtc_state (int ) ;

struct mdp5_pipeline *mdp5_crtc_get_pipeline(struct drm_crtc *crtc)
{
 struct mdp5_crtc_state *mdp5_cstate;

 if (WARN_ON(!crtc))
  return ERR_PTR(-EINVAL);

 mdp5_cstate = to_mdp5_crtc_state(crtc->state);

 return &mdp5_cstate->pipeline;
}
