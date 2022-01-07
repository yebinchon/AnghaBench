
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int drm; int runtime_pm; } ;


 int acpi_video_unregister () ;
 int drm_dev_unplug (int *) ;
 int drm_kms_helper_poll_fini (int *) ;
 int i915_gem_driver_unregister (struct drm_i915_private*) ;
 int i915_perf_unregister (struct drm_i915_private*) ;
 int i915_pmu_unregister (struct drm_i915_private*) ;
 int i915_teardown_sysfs (struct drm_i915_private*) ;
 int intel_audio_deinit (struct drm_i915_private*) ;
 int intel_fbdev_unregister (struct drm_i915_private*) ;
 int intel_gpu_ips_teardown () ;
 int intel_opregion_unregister (struct drm_i915_private*) ;
 int intel_power_domains_disable (struct drm_i915_private*) ;
 int intel_runtime_pm_disable (int *) ;

__attribute__((used)) static void i915_driver_unregister(struct drm_i915_private *dev_priv)
{
 intel_runtime_pm_disable(&dev_priv->runtime_pm);
 intel_power_domains_disable(dev_priv);

 intel_fbdev_unregister(dev_priv);
 intel_audio_deinit(dev_priv);






 drm_kms_helper_poll_fini(&dev_priv->drm);

 intel_gpu_ips_teardown();
 acpi_video_unregister();
 intel_opregion_unregister(dev_priv);

 i915_perf_unregister(dev_priv);
 i915_pmu_unregister(dev_priv);

 i915_teardown_sysfs(dev_priv);
 drm_dev_unplug(&dev_priv->drm);

 i915_gem_driver_unregister(dev_priv);
}
