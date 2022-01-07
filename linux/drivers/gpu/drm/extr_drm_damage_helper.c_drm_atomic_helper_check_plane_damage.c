
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int * fb_damage_clips; scalar_t__ crtc; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_atomic_state {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 scalar_t__ drm_atomic_crtc_needs_modeset (struct drm_crtc_state*) ;
 struct drm_crtc_state* drm_atomic_get_new_crtc_state (struct drm_atomic_state*,scalar_t__) ;
 int drm_property_blob_put (int *) ;

void drm_atomic_helper_check_plane_damage(struct drm_atomic_state *state,
       struct drm_plane_state *plane_state)
{
 struct drm_crtc_state *crtc_state;

 if (plane_state->crtc) {
  crtc_state = drm_atomic_get_new_crtc_state(state,
          plane_state->crtc);

  if (WARN_ON(!crtc_state))
   return;

  if (drm_atomic_crtc_needs_modeset(crtc_state)) {
   drm_property_blob_put(plane_state->fb_damage_clips);
   plane_state->fb_damage_clips = ((void*)0);
  }
 }
}
