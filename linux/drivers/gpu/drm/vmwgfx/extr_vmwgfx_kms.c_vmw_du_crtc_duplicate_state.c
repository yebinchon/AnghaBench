
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct vmw_crtc_state {struct drm_crtc_state base; } ;
struct drm_crtc {int state; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_crtc_duplicate_state (struct drm_crtc*,struct drm_crtc_state*) ;
 struct vmw_crtc_state* kmemdup (int ,int,int ) ;

struct drm_crtc_state *
vmw_du_crtc_duplicate_state(struct drm_crtc *crtc)
{
 struct drm_crtc_state *state;
 struct vmw_crtc_state *vcs;

 if (WARN_ON(!crtc->state))
  return ((void*)0);

 vcs = kmemdup(crtc->state, sizeof(*vcs), GFP_KERNEL);

 if (!vcs)
  return ((void*)0);

 state = &vcs->base;

 __drm_atomic_helper_crtc_duplicate_state(crtc, state);

 return state;
}
