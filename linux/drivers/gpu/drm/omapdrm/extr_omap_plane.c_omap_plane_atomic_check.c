
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane_state {scalar_t__ crtc_x; scalar_t__ crtc_y; scalar_t__ crtc_w; scalar_t__ crtc_h; scalar_t__ rotation; int fb; int crtc; int state; } ;
struct drm_plane {int dummy; } ;
struct TYPE_2__ {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct drm_crtc_state {TYPE_1__ adjusted_mode; int enable; } ;


 scalar_t__ DRM_MODE_ROTATE_0 ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 struct drm_crtc_state* drm_atomic_get_existing_crtc_state (int ,int ) ;
 int omap_framebuffer_supports_rotation (int ) ;

__attribute__((used)) static int omap_plane_atomic_check(struct drm_plane *plane,
       struct drm_plane_state *state)
{
 struct drm_crtc_state *crtc_state;

 if (!state->fb)
  return 0;


 if (WARN_ON(!state->crtc))
  return 0;

 crtc_state = drm_atomic_get_existing_crtc_state(state->state, state->crtc);

 if (WARN_ON(!crtc_state))
  return 0;

 if (!crtc_state->enable)
  return 0;

 if (state->crtc_x < 0 || state->crtc_y < 0)
  return -EINVAL;

 if (state->crtc_x + state->crtc_w > crtc_state->adjusted_mode.hdisplay)
  return -EINVAL;

 if (state->crtc_y + state->crtc_h > crtc_state->adjusted_mode.vdisplay)
  return -EINVAL;

 if (state->rotation != DRM_MODE_ROTATE_0 &&
     !omap_framebuffer_supports_rotation(state->fb))
  return -EINVAL;

 return 0;
}
