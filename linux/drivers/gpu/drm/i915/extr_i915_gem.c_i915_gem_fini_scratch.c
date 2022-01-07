
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int gt; } ;


 int intel_gt_fini_scratch (int *) ;

__attribute__((used)) static void i915_gem_fini_scratch(struct drm_i915_private *i915)
{
 intel_gt_fini_scratch(&i915->gt);
}
