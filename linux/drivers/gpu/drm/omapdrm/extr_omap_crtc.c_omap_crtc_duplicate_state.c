
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct omap_crtc_state {struct drm_crtc_state base; int manually_updated; int rotation; int zpos; } ;
struct drm_crtc {int state; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_crtc_duplicate_state (struct drm_crtc*,struct drm_crtc_state*) ;
 struct omap_crtc_state* kmalloc (int,int ) ;
 struct omap_crtc_state* to_omap_crtc_state (int ) ;

__attribute__((used)) static struct drm_crtc_state *
omap_crtc_duplicate_state(struct drm_crtc *crtc)
{
 struct omap_crtc_state *state, *current_state;

 if (WARN_ON(!crtc->state))
  return ((void*)0);

 current_state = to_omap_crtc_state(crtc->state);

 state = kmalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  return ((void*)0);

 __drm_atomic_helper_crtc_duplicate_state(crtc, &state->base);

 state->zpos = current_state->zpos;
 state->rotation = current_state->rotation;
 state->manually_updated = current_state->manually_updated;

 return &state->base;
}
