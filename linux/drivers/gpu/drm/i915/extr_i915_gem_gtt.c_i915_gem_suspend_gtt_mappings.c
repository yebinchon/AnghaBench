
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int ggtt; } ;


 int ggtt_suspend_mappings (int *) ;

void i915_gem_suspend_gtt_mappings(struct drm_i915_private *i915)
{
 ggtt_suspend_mappings(&i915->ggtt);
}
