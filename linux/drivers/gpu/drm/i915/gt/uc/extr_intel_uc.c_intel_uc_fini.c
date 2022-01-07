
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int dummy; } ;
struct intel_uc {int huc; struct intel_guc guc; } ;


 int __uc_free_load_err_log (struct intel_uc*) ;
 int intel_guc_fini (struct intel_guc*) ;
 int intel_huc_fini (int *) ;
 int intel_uc_uses_guc (struct intel_uc*) ;
 scalar_t__ intel_uc_uses_huc (struct intel_uc*) ;

void intel_uc_fini(struct intel_uc *uc)
{
 struct intel_guc *guc = &uc->guc;

 if (!intel_uc_uses_guc(uc))
  return;

 if (intel_uc_uses_huc(uc))
  intel_huc_fini(&uc->huc);

 intel_guc_fini(guc);

 __uc_free_load_err_log(uc);
}
