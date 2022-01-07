
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct mdp5_crtc_state {struct drm_crtc_state base; } ;
struct drm_crtc {int state; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_crtc_duplicate_state (struct drm_crtc*,struct drm_crtc_state*) ;
 struct mdp5_crtc_state* kmemdup (int ,int,int ) ;
 int to_mdp5_crtc_state (int ) ;

__attribute__((used)) static struct drm_crtc_state *
mdp5_crtc_duplicate_state(struct drm_crtc *crtc)
{
 struct mdp5_crtc_state *mdp5_cstate;

 if (WARN_ON(!crtc->state))
  return ((void*)0);

 mdp5_cstate = kmemdup(to_mdp5_crtc_state(crtc->state),
         sizeof(*mdp5_cstate), GFP_KERNEL);
 if (!mdp5_cstate)
  return ((void*)0);

 __drm_atomic_helper_crtc_duplicate_state(crtc, &mdp5_cstate->base);

 return &mdp5_cstate->base;
}
