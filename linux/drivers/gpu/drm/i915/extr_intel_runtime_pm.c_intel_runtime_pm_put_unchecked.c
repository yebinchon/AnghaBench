
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int dummy; } ;


 int __intel_runtime_pm_put (struct intel_runtime_pm*,int,int) ;

void intel_runtime_pm_put_unchecked(struct intel_runtime_pm *rpm)
{
 __intel_runtime_pm_put(rpm, -1, 1);
}
