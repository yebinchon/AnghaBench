
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int gt; } ;


 int intel_gt_init_scratch (int *,unsigned int) ;

__attribute__((used)) static int
i915_gem_init_scratch(struct drm_i915_private *i915, unsigned int size)
{
 return intel_gt_init_scratch(&i915->gt, size);
}
