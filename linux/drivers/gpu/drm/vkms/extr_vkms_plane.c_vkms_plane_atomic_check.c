
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int visible; int crtc; int state; int fb; } ;
struct drm_plane {scalar_t__ type; } ;
struct drm_crtc_state {int dummy; } ;


 int DRM_PLANE_HELPER_NO_SCALING ;
 scalar_t__ DRM_PLANE_TYPE_CURSOR ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct drm_crtc_state*) ;
 int PTR_ERR (struct drm_crtc_state*) ;
 struct drm_crtc_state* drm_atomic_get_crtc_state (int ,int ) ;
 int drm_atomic_helper_check_plane_state (struct drm_plane_state*,struct drm_crtc_state*,int ,int ,int,int) ;

__attribute__((used)) static int vkms_plane_atomic_check(struct drm_plane *plane,
       struct drm_plane_state *state)
{
 struct drm_crtc_state *crtc_state;
 bool can_position = 0;
 int ret;

 if (!state->fb | !state->crtc)
  return 0;

 crtc_state = drm_atomic_get_crtc_state(state->state, state->crtc);
 if (IS_ERR(crtc_state))
  return PTR_ERR(crtc_state);

 if (plane->type == DRM_PLANE_TYPE_CURSOR)
  can_position = 1;

 ret = drm_atomic_helper_check_plane_state(state, crtc_state,
        DRM_PLANE_HELPER_NO_SCALING,
        DRM_PLANE_HELPER_NO_SCALING,
        can_position, 1);
 if (ret != 0)
  return ret;


 if (!state->visible && !can_position)
  return -EINVAL;

 return 0;
}
