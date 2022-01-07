
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int dummy; } ;
typedef int intel_wakeref_t ;


 int __intel_runtime_pm_put (struct intel_runtime_pm*,int ,int) ;

void
intel_runtime_pm_put_raw(struct intel_runtime_pm *rpm, intel_wakeref_t wref)
{
 __intel_runtime_pm_put(rpm, wref, 0);
}
