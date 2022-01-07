
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i915_power_domains {int dummy; } ;


 int __async_put_domains_mask (struct i915_power_domains*) ;
 int assert_async_put_domain_masks_disjoint (struct i915_power_domains*) ;

__attribute__((used)) static u64 async_put_domains_mask(struct i915_power_domains *power_domains)
{
 assert_async_put_domain_masks_disjoint(power_domains);

 return __async_put_domains_mask(power_domains);
}
