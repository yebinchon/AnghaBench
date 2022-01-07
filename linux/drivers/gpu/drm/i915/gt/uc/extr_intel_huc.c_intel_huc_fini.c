
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_huc {int fw; } ;


 int intel_huc_rsa_data_destroy (struct intel_huc*) ;
 int intel_uc_fw_fini (int *) ;
 int intel_uc_fw_is_available (int *) ;

void intel_huc_fini(struct intel_huc *huc)
{
 if (!intel_uc_fw_is_available(&huc->fw))
  return;

 intel_huc_rsa_data_destroy(huc);
 intel_uc_fw_fini(&huc->fw);
}
