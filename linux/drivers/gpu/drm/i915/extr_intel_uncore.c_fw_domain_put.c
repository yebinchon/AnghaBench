
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_forcewake_domain {int dummy; } ;


 int FORCEWAKE_KERNEL ;
 int fw_clear (struct intel_uncore_forcewake_domain const*,int ) ;

__attribute__((used)) static inline void
fw_domain_put(const struct intel_uncore_forcewake_domain *d)
{
 fw_clear(d, FORCEWAKE_KERNEL);
}
