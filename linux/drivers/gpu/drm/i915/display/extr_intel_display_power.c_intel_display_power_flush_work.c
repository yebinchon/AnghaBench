
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_power_domains {int lock; int async_put_work; int async_put_wakeref; } ;
struct drm_i915_private {int runtime_pm; struct i915_power_domains power_domains; } ;
typedef scalar_t__ intel_wakeref_t ;


 int async_put_domains_mask (struct i915_power_domains*) ;
 int cancel_delayed_work (int *) ;
 scalar_t__ fetch_and_zero (int *) ;
 int intel_runtime_pm_put_raw (int *,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_async_put_domains (struct i915_power_domains*,int ) ;
 int verify_async_put_domains_state (struct i915_power_domains*) ;

void intel_display_power_flush_work(struct drm_i915_private *i915)
{
 struct i915_power_domains *power_domains = &i915->power_domains;
 intel_wakeref_t work_wakeref;

 mutex_lock(&power_domains->lock);

 work_wakeref = fetch_and_zero(&power_domains->async_put_wakeref);
 if (!work_wakeref)
  goto out_verify;

 release_async_put_domains(power_domains,
      async_put_domains_mask(power_domains));
 cancel_delayed_work(&power_domains->async_put_work);

out_verify:
 verify_async_put_domains_state(power_domains);

 mutex_unlock(&power_domains->lock);

 if (work_wakeref)
  intel_runtime_pm_put_raw(&i915->runtime_pm, work_wakeref);
}
