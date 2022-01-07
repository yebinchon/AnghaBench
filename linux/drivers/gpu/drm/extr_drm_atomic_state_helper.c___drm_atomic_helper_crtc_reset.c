
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {struct drm_crtc* crtc; } ;
struct drm_crtc {struct drm_crtc_state* state; } ;



void
__drm_atomic_helper_crtc_reset(struct drm_crtc *crtc,
          struct drm_crtc_state *crtc_state)
{
 if (crtc_state)
  crtc_state->crtc = crtc;

 crtc->state = crtc_state;
}
