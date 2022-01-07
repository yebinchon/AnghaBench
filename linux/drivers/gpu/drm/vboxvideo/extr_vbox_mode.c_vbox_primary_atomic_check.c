
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {scalar_t__ crtc; int state; } ;
struct drm_plane {int dummy; } ;
struct drm_crtc_state {int dummy; } ;


 int DRM_PLANE_HELPER_NO_SCALING ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 struct drm_crtc_state* drm_atomic_get_existing_crtc_state (int ,scalar_t__) ;
 int drm_atomic_helper_check_plane_state (struct drm_plane_state*,struct drm_crtc_state*,int ,int ,int,int) ;

__attribute__((used)) static int vbox_primary_atomic_check(struct drm_plane *plane,
         struct drm_plane_state *new_state)
{
 struct drm_crtc_state *crtc_state = ((void*)0);

 if (new_state->crtc) {
  crtc_state = drm_atomic_get_existing_crtc_state(
         new_state->state, new_state->crtc);
  if (WARN_ON(!crtc_state))
   return -EINVAL;
 }

 return drm_atomic_helper_check_plane_state(new_state, crtc_state,
         DRM_PLANE_HELPER_NO_SCALING,
         DRM_PLANE_HELPER_NO_SCALING,
         0, 1);
}
