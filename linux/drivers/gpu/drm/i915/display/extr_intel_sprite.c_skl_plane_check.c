
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int visible; int alpha; struct drm_framebuffer* fb; int plane; } ;
struct TYPE_6__ {int flags; } ;
struct intel_plane_state {int color_ctl; int ctl; TYPE_4__ base; TYPE_2__ ckey; } ;
struct TYPE_5__ {int dev; } ;
struct intel_plane {TYPE_1__ base; } ;
struct intel_crtc_state {int base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {TYPE_3__* format; } ;
struct TYPE_7__ {int format; } ;


 int DRM_PLANE_HELPER_NO_SCALING ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 int drm_atomic_helper_check_plane_state (TYPE_4__*,int *,int,int,int,int) ;
 int glk_plane_color_ctl (struct intel_crtc_state*,struct intel_plane_state*) ;
 scalar_t__ intel_fb_scalable (struct drm_framebuffer const*) ;
 int intel_plane_check_src_coordinates (struct intel_plane_state*) ;
 int skl_check_plane_surface (struct intel_plane_state*) ;
 int skl_max_scale (struct intel_crtc_state*,int ) ;
 int skl_plane_check_dst_coordinates (struct intel_crtc_state*,struct intel_plane_state*) ;
 int skl_plane_check_fb (struct intel_crtc_state*,struct intel_plane_state*) ;
 int skl_plane_check_nv12_rotation (struct intel_plane_state*) ;
 int skl_plane_ctl (struct intel_crtc_state*,struct intel_plane_state*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static int skl_plane_check(struct intel_crtc_state *crtc_state,
      struct intel_plane_state *plane_state)
{
 struct intel_plane *plane = to_intel_plane(plane_state->base.plane);
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 const struct drm_framebuffer *fb = plane_state->base.fb;
 int min_scale = DRM_PLANE_HELPER_NO_SCALING;
 int max_scale = DRM_PLANE_HELPER_NO_SCALING;
 int ret;

 ret = skl_plane_check_fb(crtc_state, plane_state);
 if (ret)
  return ret;


 if (!plane_state->ckey.flags && intel_fb_scalable(fb)) {
  min_scale = 1;
  max_scale = skl_max_scale(crtc_state, fb->format->format);
 }

 ret = drm_atomic_helper_check_plane_state(&plane_state->base,
        &crtc_state->base,
        min_scale, max_scale,
        1, 1);
 if (ret)
  return ret;

 ret = skl_check_plane_surface(plane_state);
 if (ret)
  return ret;

 if (!plane_state->base.visible)
  return 0;

 ret = skl_plane_check_dst_coordinates(crtc_state, plane_state);
 if (ret)
  return ret;

 ret = intel_plane_check_src_coordinates(plane_state);
 if (ret)
  return ret;

 ret = skl_plane_check_nv12_rotation(plane_state);
 if (ret)
  return ret;


 if (!(plane_state->base.alpha >> 8))
  plane_state->base.visible = 0;

 plane_state->ctl = skl_plane_ctl(crtc_state, plane_state);

 if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
  plane_state->color_ctl = glk_plane_color_ctl(crtc_state,
            plane_state);

 return 0;
}
