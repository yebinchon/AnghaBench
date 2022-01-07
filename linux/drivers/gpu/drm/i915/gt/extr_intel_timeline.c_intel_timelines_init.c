
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int gt; } ;


 int timelines_init (int *) ;

void intel_timelines_init(struct drm_i915_private *i915)
{
 timelines_init(&i915->gt);
}
