
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_huc {int fw; } ;


 int intel_uc_fw_sanitize (int *) ;

__attribute__((used)) static inline int intel_huc_sanitize(struct intel_huc *huc)
{
 intel_uc_fw_sanitize(&huc->fw);
 return 0;
}
