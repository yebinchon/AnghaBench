
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int suspended; int wakeref_count; } ;
struct drm_i915_private {int gt; int uncore; struct intel_runtime_pm runtime_pm; } ;
struct device {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*,int) ;
 int ENODEV ;
 int HAS_RUNTIME_PM (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int PCI_D0 ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int atomic_read (int *) ;
 int disable_rpm_wakeref_asserts (struct intel_runtime_pm*) ;
 int enable_rpm_wakeref_asserts (struct intel_runtime_pm*) ;
 int i915_gem_restore_fences (struct drm_i915_private*) ;
 int intel_display_power_resume (struct drm_i915_private*) ;
 int intel_enable_ipc (struct drm_i915_private*) ;
 int intel_gt_runtime_resume (int *) ;
 int intel_hpd_init (struct drm_i915_private*) ;
 int intel_opregion_notify_adapter (struct drm_i915_private*,int ) ;
 int intel_runtime_pm_enable_interrupts (struct drm_i915_private*) ;
 int intel_uncore_runtime_resume (int *) ;
 scalar_t__ intel_uncore_unclaimed_mmio (int *) ;
 struct drm_i915_private* kdev_to_i915 (struct device*) ;
 int vlv_resume_prepare (struct drm_i915_private*,int) ;

__attribute__((used)) static int intel_runtime_resume(struct device *kdev)
{
 struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
 struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 int ret = 0;

 if (WARN_ON_ONCE(!HAS_RUNTIME_PM(dev_priv)))
  return -ENODEV;

 DRM_DEBUG_KMS("Resuming device\n");

 WARN_ON_ONCE(atomic_read(&rpm->wakeref_count));
 disable_rpm_wakeref_asserts(rpm);

 intel_opregion_notify_adapter(dev_priv, PCI_D0);
 rpm->suspended = 0;
 if (intel_uncore_unclaimed_mmio(&dev_priv->uncore))
  DRM_DEBUG_DRIVER("Unclaimed access during suspend, bios?\n");

 intel_display_power_resume(dev_priv);

 if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
  ret = vlv_resume_prepare(dev_priv, 1);

 intel_uncore_runtime_resume(&dev_priv->uncore);

 intel_runtime_pm_enable_interrupts(dev_priv);





 intel_gt_runtime_resume(&dev_priv->gt);
 i915_gem_restore_fences(dev_priv);






 if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
  intel_hpd_init(dev_priv);

 intel_enable_ipc(dev_priv);

 enable_rpm_wakeref_asserts(rpm);

 if (ret)
  DRM_ERROR("Runtime resume failed, disabling it (%d)\n", ret);
 else
  DRM_DEBUG_KMS("Device resumed\n");

 return ret;
}
