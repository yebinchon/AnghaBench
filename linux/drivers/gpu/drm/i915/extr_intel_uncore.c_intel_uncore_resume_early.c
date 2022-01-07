
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int pmic_bus_access_nb; int fw_domains_saved; } ;


 int DRM_DEBUG (char*) ;
 unsigned int fetch_and_zero (int *) ;
 int forcewake_early_sanitize (struct intel_uncore*,unsigned int) ;
 int intel_uncore_has_forcewake (struct intel_uncore*) ;
 scalar_t__ intel_uncore_unclaimed_mmio (struct intel_uncore*) ;
 int iosf_mbi_register_pmic_bus_access_notifier (int *) ;

void intel_uncore_resume_early(struct intel_uncore *uncore)
{
 unsigned int restore_forcewake;

 if (intel_uncore_unclaimed_mmio(uncore))
  DRM_DEBUG("unclaimed mmio detected on resume, clearing\n");

 if (!intel_uncore_has_forcewake(uncore))
  return;

 restore_forcewake = fetch_and_zero(&uncore->fw_domains_saved);
 forcewake_early_sanitize(uncore, restore_forcewake);

 iosf_mbi_register_pmic_bus_access_notifier(&uncore->pmic_bus_access_nb);
}
