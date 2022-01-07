
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; int gt; } ;


 int I915_WAIT_LOCKED ;
 int i915_gem_driver_register__shrinker (struct drm_i915_private*) ;
 int igt_flush_test (struct drm_i915_private*,int ) ;
 int intel_gt_pm_put (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void restore_retire_worker(struct drm_i915_private *i915)
{
 intel_gt_pm_put(&i915->gt);

 mutex_lock(&i915->drm.struct_mutex);
 igt_flush_test(i915, I915_WAIT_LOCKED);
 mutex_unlock(&i915->drm.struct_mutex);

 i915_gem_driver_register__shrinker(i915);
}
