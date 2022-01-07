
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int GEM_BUG_ON (int) ;
 unsigned int I915_TILING_NONE ;
 int I965_FENCE_PAGE ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int IS_ALIGNED (unsigned int,int ) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 unsigned int i915_gem_tile_height (unsigned int) ;
 int roundup (int,unsigned int) ;

u32 i915_gem_fence_size(struct drm_i915_private *i915,
   u32 size, unsigned int tiling, unsigned int stride)
{
 u32 ggtt_size;

 GEM_BUG_ON(!size);

 if (tiling == I915_TILING_NONE)
  return size;

 GEM_BUG_ON(!stride);

 if (INTEL_GEN(i915) >= 4) {
  stride *= i915_gem_tile_height(tiling);
  GEM_BUG_ON(!IS_ALIGNED(stride, I965_FENCE_PAGE));
  return roundup(size, stride);
 }


 if (IS_GEN(i915, 3))
  ggtt_size = 1024*1024;
 else
  ggtt_size = 512*1024;

 while (ggtt_size < size)
  ggtt_size <<= 1;

 return ggtt_size;
}
