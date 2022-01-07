
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_i915_private {int runtime_pm; struct drm_device drm; } ;


 int DRM_ERROR (char*) ;
 scalar_t__ HAS_DISPLAY (struct drm_i915_private*) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int VGT_DRV_DISPLAY_READY ;
 int acpi_video_register () ;
 int display_ready ;
 scalar_t__ drm_dev_register (struct drm_device*,int ) ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int i915_debugfs_register (struct drm_i915_private*) ;
 int i915_gem_driver_register (struct drm_i915_private*) ;
 int i915_perf_register (struct drm_i915_private*) ;
 int i915_pmu_register (struct drm_i915_private*) ;
 int i915_setup_sysfs (struct drm_i915_private*) ;
 int intel_audio_init (struct drm_i915_private*) ;
 int intel_fbdev_initial_config_async (struct drm_device*) ;
 int intel_gpu_ips_init (struct drm_i915_private*) ;
 int intel_opregion_register (struct drm_i915_private*) ;
 int intel_power_domains_enable (struct drm_i915_private*) ;
 int intel_runtime_pm_enable (int *) ;
 scalar_t__ intel_vgpu_active (struct drm_i915_private*) ;
 int vgtif_reg (int ) ;

__attribute__((used)) static void i915_driver_register(struct drm_i915_private *dev_priv)
{
 struct drm_device *dev = &dev_priv->drm;

 i915_gem_driver_register(dev_priv);
 i915_pmu_register(dev_priv);





 if (intel_vgpu_active(dev_priv))
  I915_WRITE(vgtif_reg(display_ready), VGT_DRV_DISPLAY_READY);


 if (drm_dev_register(dev, 0) == 0) {
  i915_debugfs_register(dev_priv);
  i915_setup_sysfs(dev_priv);


  i915_perf_register(dev_priv);
 } else
  DRM_ERROR("Failed to register driver for userspace access!\n");

 if (HAS_DISPLAY(dev_priv)) {

  intel_opregion_register(dev_priv);
  acpi_video_register();
 }

 if (IS_GEN(dev_priv, 5))
  intel_gpu_ips_init(dev_priv);

 intel_audio_init(dev_priv);
 intel_fbdev_initial_config_async(dev);





 if (HAS_DISPLAY(dev_priv))
  drm_kms_helper_poll_init(dev);

 intel_power_domains_enable(dev_priv);
 intel_runtime_pm_enable(&dev_priv->runtime_pm);
}
