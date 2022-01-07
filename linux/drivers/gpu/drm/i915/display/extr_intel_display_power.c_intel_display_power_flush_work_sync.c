
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_power_domains {int async_put_wakeref; int async_put_work; } ;
struct drm_i915_private {struct i915_power_domains power_domains; } ;


 int WARN_ON (int ) ;
 int cancel_delayed_work_sync (int *) ;
 int intel_display_power_flush_work (struct drm_i915_private*) ;
 int verify_async_put_domains_state (struct i915_power_domains*) ;

__attribute__((used)) static void
intel_display_power_flush_work_sync(struct drm_i915_private *i915)
{
 struct i915_power_domains *power_domains = &i915->power_domains;

 intel_display_power_flush_work(i915);
 cancel_delayed_work_sync(&power_domains->async_put_work);

 verify_async_put_domains_state(power_domains);

 WARN_ON(power_domains->async_put_wakeref);
}
