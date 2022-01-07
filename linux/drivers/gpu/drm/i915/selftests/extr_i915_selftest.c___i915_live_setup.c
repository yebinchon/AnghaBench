
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int gt; } ;


 int intel_gt_terminally_wedged (int *) ;

int __i915_live_setup(void *data)
{
 struct drm_i915_private *i915 = data;

 return intel_gt_terminally_wedged(&i915->gt);
}
