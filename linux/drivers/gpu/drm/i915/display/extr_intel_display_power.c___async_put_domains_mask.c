
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i915_power_domains {int* async_put_domains; } ;



__attribute__((used)) static u64 __async_put_domains_mask(struct i915_power_domains *power_domains)
{
 return power_domains->async_put_domains[0] |
        power_domains->async_put_domains[1];
}
