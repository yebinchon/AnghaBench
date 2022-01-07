
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int image; } ;
struct vmw_surface {TYPE_1__ snooper; } ;
struct drm_plane_state {int crtc_w; int crtc_h; scalar_t__ crtc; int state; struct drm_framebuffer* fb; } ;
struct drm_plane {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct TYPE_6__ {int bo; } ;
struct TYPE_5__ {struct vmw_surface* surface; } ;


 int DRM_ERROR (char*,...) ;
 int DRM_PLANE_HELPER_NO_SCALING ;
 int EINVAL ;
 struct drm_crtc_state* drm_atomic_get_new_crtc_state (int ,scalar_t__) ;
 int drm_atomic_helper_check_plane_state (struct drm_plane_state*,struct drm_crtc_state*,int ,int ,int,int) ;
 TYPE_3__* vmw_framebuffer_to_vfb (struct drm_framebuffer*) ;
 TYPE_2__* vmw_framebuffer_to_vfbs (struct drm_framebuffer*) ;

int vmw_du_cursor_plane_atomic_check(struct drm_plane *plane,
         struct drm_plane_state *new_state)
{
 int ret = 0;
 struct drm_crtc_state *crtc_state = ((void*)0);
 struct vmw_surface *surface = ((void*)0);
 struct drm_framebuffer *fb = new_state->fb;

 if (new_state->crtc)
  crtc_state = drm_atomic_get_new_crtc_state(new_state->state,
          new_state->crtc);

 ret = drm_atomic_helper_check_plane_state(new_state, crtc_state,
        DRM_PLANE_HELPER_NO_SCALING,
        DRM_PLANE_HELPER_NO_SCALING,
        1, 1);
 if (ret)
  return ret;


 if (!fb)
  return 0;


 if (new_state->crtc_w != 64 || new_state->crtc_h != 64) {
  DRM_ERROR("Invalid cursor dimensions (%d, %d)\n",
     new_state->crtc_w, new_state->crtc_h);
  ret = -EINVAL;
 }

 if (!vmw_framebuffer_to_vfb(fb)->bo)
  surface = vmw_framebuffer_to_vfbs(fb)->surface;

 if (surface && !surface->snooper.image) {
  DRM_ERROR("surface not suitable for cursor\n");
  ret = -EINVAL;
 }

 return ret;
}
