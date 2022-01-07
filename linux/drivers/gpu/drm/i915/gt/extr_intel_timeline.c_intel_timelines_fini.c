
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int gt; } ;


 int timelines_fini (int *) ;

void intel_timelines_fini(struct drm_i915_private *i915)
{
 timelines_fini(&i915->gt);
}
