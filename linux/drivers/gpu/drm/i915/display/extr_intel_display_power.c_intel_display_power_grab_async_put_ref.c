
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_power_domains {int async_put_wakeref; int async_put_work; } ;
struct drm_i915_private {int runtime_pm; struct i915_power_domains power_domains; } ;
typedef enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;


 int BIT_ULL (int) ;
 int async_put_domains_clear_domain (struct i915_power_domains*,int) ;
 int async_put_domains_mask (struct i915_power_domains*) ;
 int cancel_delayed_work (int *) ;
 int fetch_and_zero (int *) ;
 int intel_runtime_pm_put_raw (int *,int ) ;
 int verify_async_put_domains_state (struct i915_power_domains*) ;

__attribute__((used)) static bool
intel_display_power_grab_async_put_ref(struct drm_i915_private *dev_priv,
           enum intel_display_power_domain domain)
{
 struct i915_power_domains *power_domains = &dev_priv->power_domains;
 bool ret = 0;

 if (!(async_put_domains_mask(power_domains) & BIT_ULL(domain)))
  goto out_verify;

 async_put_domains_clear_domain(power_domains, domain);

 ret = 1;

 if (async_put_domains_mask(power_domains))
  goto out_verify;

 cancel_delayed_work(&power_domains->async_put_work);
 intel_runtime_pm_put_raw(&dev_priv->runtime_pm,
     fetch_and_zero(&power_domains->async_put_wakeref));
out_verify:
 verify_async_put_domains_state(power_domains);

 return ret;
}
