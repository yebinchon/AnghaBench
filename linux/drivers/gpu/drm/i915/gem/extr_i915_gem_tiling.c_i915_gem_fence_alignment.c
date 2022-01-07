
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int GEM_BUG_ON (int) ;
 int I915_GTT_MIN_ALIGNMENT ;
 unsigned int I915_TILING_NONE ;
 int I965_FENCE_PAGE ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int i915_gem_fence_size (struct drm_i915_private*,int ,unsigned int,unsigned int) ;

u32 i915_gem_fence_alignment(struct drm_i915_private *i915, u32 size,
        unsigned int tiling, unsigned int stride)
{
 GEM_BUG_ON(!size);





 if (tiling == I915_TILING_NONE)
  return I915_GTT_MIN_ALIGNMENT;

 if (INTEL_GEN(i915) >= 4)
  return I965_FENCE_PAGE;





 return i915_gem_fence_size(i915, size, tiling, stride);
}
