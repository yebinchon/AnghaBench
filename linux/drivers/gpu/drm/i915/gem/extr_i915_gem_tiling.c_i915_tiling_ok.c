
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;


 unsigned int GEN7_FENCE_MAX_PITCH_VAL ;
 scalar_t__ HAS_128_BYTE_Y_TILING (struct drm_i915_private*) ;
 unsigned int I915_TILING_LAST ;
 unsigned int I915_TILING_NONE ;
 unsigned int I915_TILING_Y ;
 unsigned int I965_FENCE_MAX_PITCH_VAL ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int IS_ALIGNED (unsigned int,unsigned int) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int is_power_of_2 (unsigned int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool
i915_tiling_ok(struct drm_i915_gem_object *obj,
        unsigned int tiling, unsigned int stride)
{
 struct drm_i915_private *i915 = to_i915(obj->base.dev);
 unsigned int tile_width;


 if (tiling == I915_TILING_NONE)
  return 1;

 if (tiling > I915_TILING_LAST)
  return 0;




 if (INTEL_GEN(i915) >= 7) {
  if (stride / 128 > GEN7_FENCE_MAX_PITCH_VAL)
   return 0;
 } else if (INTEL_GEN(i915) >= 4) {
  if (stride / 128 > I965_FENCE_MAX_PITCH_VAL)
   return 0;
 } else {
  if (stride > 8192)
   return 0;

  if (!is_power_of_2(stride))
   return 0;
 }

 if (IS_GEN(i915, 2) ||
     (tiling == I915_TILING_Y && HAS_128_BYTE_Y_TILING(i915)))
  tile_width = 128;
 else
  tile_width = 512;

 if (!stride || !IS_ALIGNED(stride, tile_width))
  return 0;

 return 1;
}
