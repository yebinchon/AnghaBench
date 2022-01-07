
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {scalar_t__ self_refresh_active; int enable; scalar_t__ active; } ;


 int drm_atomic_crtc_effectively_active (struct drm_crtc_state*) ;

__attribute__((used)) static bool
crtc_needs_disable(struct drm_crtc_state *old_state,
     struct drm_crtc_state *new_state)
{




 if (!new_state)
  return drm_atomic_crtc_effectively_active(old_state);






 return old_state->active ||
        (old_state->self_refresh_active && !new_state->enable) ||
        new_state->self_refresh_active;
}
