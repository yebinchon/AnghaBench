
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {struct drm_framebuffer* fb; int plane; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_plane {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {TYPE_3__* format; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_6__ {int is_yuv; } ;


 int DVSGAMCMAX_ILK (int,int) ;
 int DVSGAMC_ILK (int,int) ;
 int I915_WRITE_FW (int ,int) ;
 int ilk_sprite_linear_gamma (int*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static void ilk_update_gamma(const struct intel_plane_state *plane_state)
{
 struct intel_plane *plane = to_intel_plane(plane_state->base.plane);
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 const struct drm_framebuffer *fb = plane_state->base.fb;
 enum pipe pipe = plane->pipe;
 u16 gamma[17];
 int i;


 if (!fb->format->is_yuv)
  return;

 ilk_sprite_linear_gamma(gamma);


 for (i = 0; i < 16; i++)
  I915_WRITE_FW(DVSGAMC_ILK(pipe, i),
         gamma[i] << 20 |
         gamma[i] << 10 |
         gamma[i]);

 I915_WRITE_FW(DVSGAMCMAX_ILK(pipe, 0), gamma[i]);
 I915_WRITE_FW(DVSGAMCMAX_ILK(pipe, 1), gamma[i]);
 I915_WRITE_FW(DVSGAMCMAX_ILK(pipe, 2), gamma[i]);
 i++;
}
