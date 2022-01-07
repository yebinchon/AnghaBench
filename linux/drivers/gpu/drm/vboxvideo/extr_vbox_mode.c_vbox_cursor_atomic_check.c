
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_plane_state {scalar_t__ crtc_w; scalar_t__ crtc_h; int fb; scalar_t__ crtc; int state; } ;
struct drm_plane {int dummy; } ;
struct drm_crtc_state {int dummy; } ;


 int DRM_PLANE_HELPER_NO_SCALING ;
 int EINVAL ;
 scalar_t__ VBOX_MAX_CURSOR_HEIGHT ;
 scalar_t__ VBOX_MAX_CURSOR_WIDTH ;
 scalar_t__ WARN_ON (int) ;
 struct drm_crtc_state* drm_atomic_get_existing_crtc_state (int ,scalar_t__) ;
 int drm_atomic_helper_check_plane_state (struct drm_plane_state*,struct drm_crtc_state*,int ,int ,int,int) ;

__attribute__((used)) static int vbox_cursor_atomic_check(struct drm_plane *plane,
        struct drm_plane_state *new_state)
{
 struct drm_crtc_state *crtc_state = ((void*)0);
 u32 width = new_state->crtc_w;
 u32 height = new_state->crtc_h;
 int ret;

 if (new_state->crtc) {
  crtc_state = drm_atomic_get_existing_crtc_state(
         new_state->state, new_state->crtc);
  if (WARN_ON(!crtc_state))
   return -EINVAL;
 }

 ret = drm_atomic_helper_check_plane_state(new_state, crtc_state,
        DRM_PLANE_HELPER_NO_SCALING,
        DRM_PLANE_HELPER_NO_SCALING,
        1, 1);
 if (ret)
  return ret;

 if (!new_state->fb)
  return 0;

 if (width > VBOX_MAX_CURSOR_WIDTH || height > VBOX_MAX_CURSOR_HEIGHT ||
     width == 0 || height == 0)
  return -EINVAL;

 return 0;
}
