
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idle_work; int retire_work; } ;
struct drm_i915_private {TYPE_1__ gem; int gt; } ;


 int cancel_delayed_work_sync (int *) ;
 int flush_work (int *) ;
 int i915_gem_driver_unregister__shrinker (struct drm_i915_private*) ;
 int intel_gt_pm_get (int *) ;

__attribute__((used)) static void disable_retire_worker(struct drm_i915_private *i915)
{
 i915_gem_driver_unregister__shrinker(i915);

 intel_gt_pm_get(&i915->gt);

 cancel_delayed_work_sync(&i915->gem.retire_work);
 flush_work(&i915->gem.idle_work);
}
