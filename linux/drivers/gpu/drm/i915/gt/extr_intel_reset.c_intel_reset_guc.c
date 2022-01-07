
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_gt {int uncore; int i915; } ;


 int FORCEWAKE_ALL ;
 int GEM_BUG_ON (int) ;
 int GEN11_GRDOM_GUC ;
 int GEN9_GRDOM_GUC ;
 int HAS_GT_UC (int ) ;
 int INTEL_GEN (int ) ;
 int gen6_hw_domain_reset (struct intel_gt*,int ) ;
 int intel_uncore_forcewake_get (int ,int ) ;
 int intel_uncore_forcewake_put (int ,int ) ;

int intel_reset_guc(struct intel_gt *gt)
{
 u32 guc_domain =
  INTEL_GEN(gt->i915) >= 11 ? GEN11_GRDOM_GUC : GEN9_GRDOM_GUC;
 int ret;

 GEM_BUG_ON(!HAS_GT_UC(gt->i915));

 intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
 ret = gen6_hw_domain_reset(gt, guc_domain);
 intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);

 return ret;
}
