
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_huc {int fw; } ;
struct intel_guc {int dummy; } ;
struct intel_uc {struct intel_huc huc; struct intel_guc guc; } ;


 int GEM_BUG_ON (int ) ;
 int intel_guc_init (struct intel_guc*) ;
 int intel_huc_init (struct intel_huc*) ;
 int intel_uc_fw_cleanup_fetch (int *) ;
 int intel_uc_supports_guc_submission (struct intel_uc*) ;
 int intel_uc_uses_guc (struct intel_uc*) ;
 scalar_t__ intel_uc_uses_huc (struct intel_uc*) ;

void intel_uc_init(struct intel_uc *uc)
{
 struct intel_guc *guc = &uc->guc;
 struct intel_huc *huc = &uc->huc;
 int ret;

 if (!intel_uc_uses_guc(uc))
  return;


 GEM_BUG_ON(intel_uc_supports_guc_submission(uc));

 ret = intel_guc_init(guc);
 if (ret) {
  intel_uc_fw_cleanup_fetch(&huc->fw);
  return;
 }

 if (intel_uc_uses_huc(uc))
  intel_huc_init(huc);
}
