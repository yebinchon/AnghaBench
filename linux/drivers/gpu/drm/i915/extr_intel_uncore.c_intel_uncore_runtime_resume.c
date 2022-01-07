
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int pmic_bus_access_nb; } ;


 int intel_uncore_has_forcewake (struct intel_uncore*) ;
 int iosf_mbi_register_pmic_bus_access_notifier (int *) ;

void intel_uncore_runtime_resume(struct intel_uncore *uncore)
{
 if (!intel_uncore_has_forcewake(uncore))
  return;

 iosf_mbi_register_pmic_bus_access_notifier(&uncore->pmic_bus_access_nb);
}
