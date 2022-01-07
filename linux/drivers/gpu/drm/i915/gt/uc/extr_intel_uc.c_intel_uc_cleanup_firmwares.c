
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fw; } ;
struct TYPE_3__ {int fw; } ;
struct intel_uc {TYPE_2__ guc; TYPE_1__ huc; } ;


 int intel_uc_fw_cleanup_fetch (int *) ;
 int intel_uc_uses_guc (struct intel_uc*) ;
 scalar_t__ intel_uc_uses_huc (struct intel_uc*) ;

void intel_uc_cleanup_firmwares(struct intel_uc *uc)
{
 if (!intel_uc_uses_guc(uc))
  return;

 if (intel_uc_uses_huc(uc))
  intel_uc_fw_cleanup_fetch(&uc->huc.fw);

 intel_uc_fw_cleanup_fetch(&uc->guc.fw);
}
