
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int state; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_crtc_duplicate_state (struct drm_crtc*,struct drm_crtc_state*) ;
 struct drm_crtc_state* kmalloc (int,int ) ;

struct drm_crtc_state *
drm_atomic_helper_crtc_duplicate_state(struct drm_crtc *crtc)
{
 struct drm_crtc_state *state;

 if (WARN_ON(!crtc->state))
  return ((void*)0);

 state = kmalloc(sizeof(*state), GFP_KERNEL);
 if (state)
  __drm_atomic_helper_crtc_duplicate_state(crtc, state);

 return state;
}
