
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
struct TYPE_6__ {int dev; } ;
struct intel_plane {int pipe; TYPE_3__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {TYPE_1__* format; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_4__ {int is_yuv; } ;


 int DVSGAMC_G4X (int,int) ;
 int I915_WRITE_FW (int ,int) ;
 int i9xx_plane_linear_gamma (int*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static void g4x_update_gamma(const struct intel_plane_state *plane_state)
{
 struct intel_plane *plane = to_intel_plane(plane_state->base.plane);
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 const struct drm_framebuffer *fb = plane_state->base.fb;
 enum pipe pipe = plane->pipe;
 u16 gamma[8];
 int i;


 if (!fb->format->is_yuv)
  return;

 i9xx_plane_linear_gamma(gamma);



 for (i = 1; i < 8 - 1; i++)
  I915_WRITE_FW(DVSGAMC_G4X(pipe, i - 1),
         gamma[i] << 16 |
         gamma[i] << 8 |
         gamma[i]);
}
