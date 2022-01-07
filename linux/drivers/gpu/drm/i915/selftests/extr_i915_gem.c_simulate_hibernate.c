
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int runtime_pm; } ;
typedef int intel_wakeref_t ;


 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put (int *,int ) ;
 int trash_stolen (struct drm_i915_private*) ;

__attribute__((used)) static void simulate_hibernate(struct drm_i915_private *i915)
{
 intel_wakeref_t wakeref;

 wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 trash_stolen(i915);

 intel_runtime_pm_put(&i915->runtime_pm, wakeref);
}
