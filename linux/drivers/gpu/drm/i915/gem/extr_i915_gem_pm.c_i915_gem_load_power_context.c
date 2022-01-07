
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int gt; } ;


 int switch_to_kernel_context_sync (int *) ;

bool i915_gem_load_power_context(struct drm_i915_private *i915)
{
 return switch_to_kernel_context_sync(&i915->gt);
}
