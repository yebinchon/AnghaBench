
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_power_domains {int async_put_wakeref; int async_put_work; } ;
typedef int intel_wakeref_t ;


 int WARN_ON (int) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_unbound_wq ;

__attribute__((used)) static void
queue_async_put_domains_work(struct i915_power_domains *power_domains,
        intel_wakeref_t wakeref)
{
 WARN_ON(power_domains->async_put_wakeref);
 power_domains->async_put_wakeref = wakeref;
 WARN_ON(!queue_delayed_work(system_unbound_wq,
        &power_domains->async_put_work,
        msecs_to_jiffies(100)));
}
