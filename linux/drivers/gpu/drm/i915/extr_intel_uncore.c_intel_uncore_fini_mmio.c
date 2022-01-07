
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int pmic_bus_access_nb; } ;


 int intel_uncore_forcewake_reset (struct intel_uncore*) ;
 int intel_uncore_fw_domains_fini (struct intel_uncore*) ;
 scalar_t__ intel_uncore_has_forcewake (struct intel_uncore*) ;
 int iosf_mbi_punit_acquire () ;
 int iosf_mbi_punit_release () ;
 int iosf_mbi_unregister_pmic_bus_access_notifier_unlocked (int *) ;
 int uncore_mmio_cleanup (struct intel_uncore*) ;

void intel_uncore_fini_mmio(struct intel_uncore *uncore)
{
 if (intel_uncore_has_forcewake(uncore)) {
  iosf_mbi_punit_acquire();
  iosf_mbi_unregister_pmic_bus_access_notifier_unlocked(
   &uncore->pmic_bus_access_nb);
  intel_uncore_forcewake_reset(uncore);
  intel_uncore_fw_domains_fini(uncore);
  iosf_mbi_punit_release();
 }

 uncore_mmio_cleanup(uncore);
}
