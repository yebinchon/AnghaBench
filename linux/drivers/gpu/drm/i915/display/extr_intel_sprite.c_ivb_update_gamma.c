
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int plane; } ;
struct intel_plane_state {TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_plane {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_WRITE_FW (int ,int) ;
 int SPRGAMC (int,int) ;
 int SPRGAMC16 (int,int) ;
 int SPRGAMC17 (int,int) ;
 int ivb_sprite_linear_gamma (int*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static void ivb_update_gamma(const struct intel_plane_state *plane_state)
{
 struct intel_plane *plane = to_intel_plane(plane_state->base.plane);
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 enum pipe pipe = plane->pipe;
 u16 gamma[18];
 int i;

 ivb_sprite_linear_gamma(gamma);


 for (i = 0; i < 16; i++)
  I915_WRITE_FW(SPRGAMC(pipe, i),
         gamma[i] << 20 |
         gamma[i] << 10 |
         gamma[i]);

 I915_WRITE_FW(SPRGAMC16(pipe, 0), gamma[i]);
 I915_WRITE_FW(SPRGAMC16(pipe, 1), gamma[i]);
 I915_WRITE_FW(SPRGAMC16(pipe, 2), gamma[i]);
 i++;

 I915_WRITE_FW(SPRGAMC17(pipe, 0), gamma[i]);
 I915_WRITE_FW(SPRGAMC17(pipe, 1), gamma[i]);
 I915_WRITE_FW(SPRGAMC17(pipe, 2), gamma[i]);
 i++;
}
