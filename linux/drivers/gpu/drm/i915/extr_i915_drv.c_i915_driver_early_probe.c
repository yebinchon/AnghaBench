
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int wm_mutex; } ;
struct TYPE_3__ {int lock; } ;
struct drm_i915_private {int gt; int wopcm; int runtime_pm; int hdcp_comp_mutex; int pps_mutex; TYPE_2__ wm; int av_mutex; int sb_qos; int sb_lock; int backlight_lock; TYPE_1__ gpu_error; int irq_lock; int uncore; int mmio_debug; } ;


 int ENODEV ;
 int PM_QOS_CPU_DMA_LATENCY ;
 int PM_QOS_DEFAULT_VALUE ;
 int i915_gem_cleanup_early (struct drm_i915_private*) ;
 int i915_gem_init_early (struct drm_i915_private*) ;
 scalar_t__ i915_inject_probe_failure (struct drm_i915_private*) ;
 int i915_memcpy_init_early (struct drm_i915_private*) ;
 int i915_workqueues_cleanup (struct drm_i915_private*) ;
 int i915_workqueues_init (struct drm_i915_private*) ;
 int intel_detect_pch (struct drm_i915_private*) ;
 int intel_detect_preproduction_hw (struct drm_i915_private*) ;
 int intel_device_info_subplatform_init (struct drm_i915_private*) ;
 int intel_display_crc_init (struct drm_i915_private*) ;
 int intel_gt_driver_late_release (int *) ;
 int intel_gt_init_early (int *,struct drm_i915_private*) ;
 int intel_init_audio_hooks (struct drm_i915_private*) ;
 int intel_init_clock_gating_hooks (struct drm_i915_private*) ;
 int intel_init_display_hooks (struct drm_i915_private*) ;
 int intel_init_dpio (struct drm_i915_private*) ;
 int intel_irq_init (struct drm_i915_private*) ;
 int intel_pm_setup (struct drm_i915_private*) ;
 int intel_power_domains_init (struct drm_i915_private*) ;
 int intel_runtime_pm_init_early (int *) ;
 int intel_uncore_init_early (int *,struct drm_i915_private*) ;
 int intel_uncore_mmio_debug_init_early (int *) ;
 int intel_wopcm_init_early (int *) ;
 int mutex_init (int *) ;
 int pm_qos_add_request (int *,int ,int ) ;
 int spin_lock_init (int *) ;
 int vlv_alloc_s0ix_state (struct drm_i915_private*) ;
 int vlv_free_s0ix_state (struct drm_i915_private*) ;

__attribute__((used)) static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
{
 int ret = 0;

 if (i915_inject_probe_failure(dev_priv))
  return -ENODEV;

 intel_device_info_subplatform_init(dev_priv);

 intel_uncore_mmio_debug_init_early(&dev_priv->mmio_debug);
 intel_uncore_init_early(&dev_priv->uncore, dev_priv);

 spin_lock_init(&dev_priv->irq_lock);
 spin_lock_init(&dev_priv->gpu_error.lock);
 mutex_init(&dev_priv->backlight_lock);

 mutex_init(&dev_priv->sb_lock);
 pm_qos_add_request(&dev_priv->sb_qos,
      PM_QOS_CPU_DMA_LATENCY, PM_QOS_DEFAULT_VALUE);

 mutex_init(&dev_priv->av_mutex);
 mutex_init(&dev_priv->wm.wm_mutex);
 mutex_init(&dev_priv->pps_mutex);
 mutex_init(&dev_priv->hdcp_comp_mutex);

 i915_memcpy_init_early(dev_priv);
 intel_runtime_pm_init_early(&dev_priv->runtime_pm);

 ret = i915_workqueues_init(dev_priv);
 if (ret < 0)
  return ret;

 ret = vlv_alloc_s0ix_state(dev_priv);
 if (ret < 0)
  goto err_workqueues;

 intel_wopcm_init_early(&dev_priv->wopcm);

 intel_gt_init_early(&dev_priv->gt, dev_priv);

 ret = i915_gem_init_early(dev_priv);
 if (ret < 0)
  goto err_gt;


 intel_detect_pch(dev_priv);

 intel_pm_setup(dev_priv);
 intel_init_dpio(dev_priv);
 ret = intel_power_domains_init(dev_priv);
 if (ret < 0)
  goto err_gem;
 intel_irq_init(dev_priv);
 intel_init_display_hooks(dev_priv);
 intel_init_clock_gating_hooks(dev_priv);
 intel_init_audio_hooks(dev_priv);
 intel_display_crc_init(dev_priv);

 intel_detect_preproduction_hw(dev_priv);

 return 0;

err_gem:
 i915_gem_cleanup_early(dev_priv);
err_gt:
 intel_gt_driver_late_release(&dev_priv->gt);
 vlv_free_s0ix_state(dev_priv);
err_workqueues:
 i915_workqueues_cleanup(dev_priv);
 return ret;
}
