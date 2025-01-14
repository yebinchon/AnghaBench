
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {struct drm_crtc* crtc; int state; struct drm_framebuffer* fb; } ;
struct drm_plane {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc_state {int enable; } ;
struct drm_crtc {int dummy; } ;


 int EINVAL ;
 int FRAC_16_16 (int,int) ;
 scalar_t__ WARN_ON (int) ;
 struct drm_crtc_state* drm_atomic_get_existing_crtc_state (int ,struct drm_crtc*) ;
 int drm_atomic_helper_check_plane_state (struct drm_plane_state*,struct drm_crtc_state*,int,int,int,int) ;

__attribute__((used)) static int zx_vl_plane_atomic_check(struct drm_plane *plane,
        struct drm_plane_state *plane_state)
{
 struct drm_framebuffer *fb = plane_state->fb;
 struct drm_crtc *crtc = plane_state->crtc;
 struct drm_crtc_state *crtc_state;
 int min_scale = FRAC_16_16(1, 8);
 int max_scale = FRAC_16_16(8, 1);

 if (!crtc || !fb)
  return 0;

 crtc_state = drm_atomic_get_existing_crtc_state(plane_state->state,
       crtc);
 if (WARN_ON(!crtc_state))
  return -EINVAL;


 if (!crtc_state->enable)
  return 0;


 if (!plane_state->crtc)
  return -EINVAL;

 return drm_atomic_helper_check_plane_state(plane_state, crtc_state,
         min_scale, max_scale,
         1, 1);
}
