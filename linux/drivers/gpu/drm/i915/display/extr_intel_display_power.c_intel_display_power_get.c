
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_power_domains {int lock; } ;
struct drm_i915_private {int runtime_pm; struct i915_power_domains power_domains; } ;
typedef int intel_wakeref_t ;
typedef enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;


 int __intel_display_power_get_domain (struct drm_i915_private*,int) ;
 int intel_runtime_pm_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
     enum intel_display_power_domain domain)
{
 struct i915_power_domains *power_domains = &dev_priv->power_domains;
 intel_wakeref_t wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);

 mutex_lock(&power_domains->lock);
 __intel_display_power_get_domain(dev_priv, domain);
 mutex_unlock(&power_domains->lock);

 return wakeref;
}
