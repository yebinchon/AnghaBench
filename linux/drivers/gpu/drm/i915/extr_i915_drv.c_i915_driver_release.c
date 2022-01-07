
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int dummy; } ;
struct drm_i915_private {struct intel_runtime_pm runtime_pm; } ;
struct drm_device {int dummy; } ;


 int disable_rpm_wakeref_asserts (struct intel_runtime_pm*) ;
 int enable_rpm_wakeref_asserts (struct intel_runtime_pm*) ;
 int i915_driver_destroy (struct drm_i915_private*) ;
 int i915_driver_late_release (struct drm_i915_private*) ;
 int i915_driver_mmio_release (struct drm_i915_private*) ;
 int i915_gem_driver_release (struct drm_i915_private*) ;
 int i915_ggtt_driver_release (struct drm_i915_private*) ;
 int intel_runtime_pm_driver_release (struct intel_runtime_pm*) ;
 int intel_sanitize_gt_powersave (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static void i915_driver_release(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;

 disable_rpm_wakeref_asserts(rpm);

 i915_gem_driver_release(dev_priv);

 i915_ggtt_driver_release(dev_priv);


 intel_sanitize_gt_powersave(dev_priv);

 i915_driver_mmio_release(dev_priv);

 enable_rpm_wakeref_asserts(rpm);
 intel_runtime_pm_driver_release(rpm);

 i915_driver_late_release(dev_priv);
 i915_driver_destroy(dev_priv);
}
