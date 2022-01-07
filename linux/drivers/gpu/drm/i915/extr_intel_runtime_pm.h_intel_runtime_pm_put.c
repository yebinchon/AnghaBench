
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int dummy; } ;
typedef int intel_wakeref_t ;


 int intel_runtime_pm_put_unchecked (struct intel_runtime_pm*) ;

__attribute__((used)) static inline void
intel_runtime_pm_put(struct intel_runtime_pm *rpm, intel_wakeref_t wref)
{
 intel_runtime_pm_put_unchecked(rpm);
}
