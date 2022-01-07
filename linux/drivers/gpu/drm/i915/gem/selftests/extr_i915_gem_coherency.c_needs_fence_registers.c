
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int gt; } ;


 int intel_gt_is_wedged (int *) ;

__attribute__((used)) static bool needs_fence_registers(struct drm_i915_private *i915)
{
 return !intel_gt_is_wedged(&i915->gt);
}
