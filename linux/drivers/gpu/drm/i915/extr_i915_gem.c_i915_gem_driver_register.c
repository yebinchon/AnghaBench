
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int i915_gem_driver_register__shrinker (struct drm_i915_private*) ;
 int intel_engines_driver_register (struct drm_i915_private*) ;

void i915_gem_driver_register(struct drm_i915_private *i915)
{
 i915_gem_driver_register__shrinker(i915);

 intel_engines_driver_register(i915);
}
