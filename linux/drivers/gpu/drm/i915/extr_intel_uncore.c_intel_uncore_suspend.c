
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int fw_domains_saved; int pmic_bus_access_nb; } ;


 int intel_uncore_forcewake_reset (struct intel_uncore*) ;
 int intel_uncore_has_forcewake (struct intel_uncore*) ;
 int iosf_mbi_punit_acquire () ;
 int iosf_mbi_punit_release () ;
 int iosf_mbi_unregister_pmic_bus_access_notifier_unlocked (int *) ;

void intel_uncore_suspend(struct intel_uncore *uncore)
{
 if (!intel_uncore_has_forcewake(uncore))
  return;

 iosf_mbi_punit_acquire();
 iosf_mbi_unregister_pmic_bus_access_notifier_unlocked(
  &uncore->pmic_bus_access_nb);
 uncore->fw_domains_saved = intel_uncore_forcewake_reset(uncore);
 iosf_mbi_punit_release();
}
