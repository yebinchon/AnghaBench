
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int sb_lock; int sb_qos; int gt; } ;


 int i915_gem_cleanup_early (struct drm_i915_private*) ;
 int i915_workqueues_cleanup (struct drm_i915_private*) ;
 int intel_gt_driver_late_release (int *) ;
 int intel_irq_fini (struct drm_i915_private*) ;
 int intel_power_domains_cleanup (struct drm_i915_private*) ;
 int mutex_destroy (int *) ;
 int pm_qos_remove_request (int *) ;
 int vlv_free_s0ix_state (struct drm_i915_private*) ;

__attribute__((used)) static void i915_driver_late_release(struct drm_i915_private *dev_priv)
{
 intel_irq_fini(dev_priv);
 intel_power_domains_cleanup(dev_priv);
 i915_gem_cleanup_early(dev_priv);
 intel_gt_driver_late_release(&dev_priv->gt);
 vlv_free_s0ix_state(dev_priv);
 i915_workqueues_cleanup(dev_priv);

 pm_qos_remove_request(&dev_priv->sb_qos);
 mutex_destroy(&dev_priv->sb_lock);
}
