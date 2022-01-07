
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_huc {int dummy; } ;
struct intel_guc {int dummy; } ;
struct intel_uc {struct intel_huc huc; struct intel_guc guc; } ;


 int GEM_BUG_ON (int) ;
 int __intel_uc_reset_hw (struct intel_uc*) ;
 int intel_guc_sanitize (struct intel_guc*) ;
 int intel_huc_sanitize (struct intel_huc*) ;
 int intel_uc_supports_guc (struct intel_uc*) ;

__attribute__((used)) static int __uc_sanitize(struct intel_uc *uc)
{
 struct intel_guc *guc = &uc->guc;
 struct intel_huc *huc = &uc->huc;

 GEM_BUG_ON(!intel_uc_supports_guc(uc));

 intel_huc_sanitize(huc);
 intel_guc_sanitize(guc);

 return __intel_uc_reset_hw(uc);
}
