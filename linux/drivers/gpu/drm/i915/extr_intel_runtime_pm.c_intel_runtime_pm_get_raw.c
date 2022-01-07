
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int dummy; } ;
typedef int intel_wakeref_t ;


 int __intel_runtime_pm_get (struct intel_runtime_pm*,int) ;

intel_wakeref_t intel_runtime_pm_get_raw(struct intel_runtime_pm *rpm)
{
 return __intel_runtime_pm_get(rpm, 0);
}
