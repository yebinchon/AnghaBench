
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ color_range; struct drm_framebuffer* fb; int plane; } ;
struct intel_plane_state {TYPE_3__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_plane {int pipe; int id; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {TYPE_2__* format; } ;
typedef enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_5__ {scalar_t__ is_yuv; } ;


 int COS_0 ;
 int DIV_ROUND_CLOSEST (int,int) ;
 scalar_t__ DRM_COLOR_YCBCR_LIMITED_RANGE ;
 int I915_WRITE_FW (int ,int) ;
 int SIN_0 ;
 int SPCLRC0 (int,int) ;
 int SPCLRC1 (int,int) ;
 int SP_BRIGHTNESS (int) ;
 int SP_CONTRAST (int) ;
 int SP_SH_COS (int) ;
 int SP_SH_SIN (int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static void
vlv_update_clrc(const struct intel_plane_state *plane_state)
{
 struct intel_plane *plane = to_intel_plane(plane_state->base.plane);
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 const struct drm_framebuffer *fb = plane_state->base.fb;
 enum pipe pipe = plane->pipe;
 enum plane_id plane_id = plane->id;
 int contrast, brightness, sh_scale, sh_sin, sh_cos;

 if (fb->format->is_yuv &&
     plane_state->base.color_range == DRM_COLOR_YCBCR_LIMITED_RANGE) {






  contrast = DIV_ROUND_CLOSEST(255 << 6, 235 - 16);
  brightness = -DIV_ROUND_CLOSEST(16 * 255, 235 - 16);
  sh_scale = DIV_ROUND_CLOSEST(128 << 7, 240 - 128);
  sh_sin = SIN_0 * sh_scale;
  sh_cos = COS_0 * sh_scale;
 } else {

  contrast = 1 << 6;
  brightness = 0;
  sh_scale = 1 << 7;
  sh_sin = SIN_0 * sh_scale;
  sh_cos = COS_0 * sh_scale;
 }


 I915_WRITE_FW(SPCLRC0(pipe, plane_id),
        SP_CONTRAST(contrast) | SP_BRIGHTNESS(brightness));
 I915_WRITE_FW(SPCLRC1(pipe, plane_id),
        SP_SH_SIN(sh_sin) | SP_SH_COS(sh_cos));
}
