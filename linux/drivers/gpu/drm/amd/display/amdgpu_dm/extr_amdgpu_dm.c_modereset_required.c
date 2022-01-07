
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int active; int enable; } ;


 int drm_atomic_crtc_needs_modeset (struct drm_crtc_state*) ;

__attribute__((used)) static bool modereset_required(struct drm_crtc_state *crtc_state)
{
 if (!drm_atomic_crtc_needs_modeset(crtc_state))
  return 0;

 return !crtc_state->enable || !crtc_state->active;
}
