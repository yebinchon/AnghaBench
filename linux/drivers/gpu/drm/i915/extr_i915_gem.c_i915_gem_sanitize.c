
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int runtime_pm; int uncore; int gt; } ;
typedef int intel_wakeref_t ;


 int FORCEWAKE_ALL ;
 int GEM_TRACE (char*) ;
 scalar_t__ intel_gt_is_wedged (int *) ;
 int intel_gt_sanitize (int *,int) ;
 int intel_gt_unset_wedged (int *) ;
 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put (int *,int ) ;
 int intel_uncore_forcewake_get (int *,int ) ;
 int intel_uncore_forcewake_put (int *,int ) ;

void i915_gem_sanitize(struct drm_i915_private *i915)
{
 intel_wakeref_t wakeref;

 GEM_TRACE("\n");

 wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 intel_uncore_forcewake_get(&i915->uncore, FORCEWAKE_ALL);







 if (intel_gt_is_wedged(&i915->gt))
  intel_gt_unset_wedged(&i915->gt);
 intel_gt_sanitize(&i915->gt, 0);

 intel_uncore_forcewake_put(&i915->uncore, FORCEWAKE_ALL);
 intel_runtime_pm_put(&i915->runtime_pm, wakeref);
}
