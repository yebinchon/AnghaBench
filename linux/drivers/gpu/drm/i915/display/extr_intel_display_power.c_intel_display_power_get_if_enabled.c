
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_power_domains {int lock; } ;
struct drm_i915_private {int runtime_pm; struct i915_power_domains power_domains; } ;
typedef int intel_wakeref_t ;
typedef enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;


 int __intel_display_power_get_domain (struct drm_i915_private*,int) ;
 scalar_t__ __intel_display_power_is_enabled (struct drm_i915_private*,int) ;
 int intel_runtime_pm_get_if_in_use (int *) ;
 int intel_runtime_pm_put (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

intel_wakeref_t
intel_display_power_get_if_enabled(struct drm_i915_private *dev_priv,
       enum intel_display_power_domain domain)
{
 struct i915_power_domains *power_domains = &dev_priv->power_domains;
 intel_wakeref_t wakeref;
 bool is_enabled;

 wakeref = intel_runtime_pm_get_if_in_use(&dev_priv->runtime_pm);
 if (!wakeref)
  return 0;

 mutex_lock(&power_domains->lock);

 if (__intel_display_power_is_enabled(dev_priv, domain)) {
  __intel_display_power_get_domain(dev_priv, domain);
  is_enabled = 1;
 } else {
  is_enabled = 0;
 }

 mutex_unlock(&power_domains->lock);

 if (!is_enabled) {
  intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
  wakeref = 0;
 }

 return wakeref;
}
