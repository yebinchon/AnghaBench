
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_uc {int dummy; } ;
struct intel_huc {int fw; } ;
struct intel_gt {struct drm_i915_private* i915; struct intel_uc uc; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int platform; } ;


 TYPE_1__* INTEL_INFO (struct drm_i915_private*) ;
 int INTEL_REVID (struct drm_i915_private*) ;
 int INTEL_UC_FW_TYPE_HUC ;
 struct intel_gt* huc_to_gt (struct intel_huc*) ;
 int intel_uc_fw_init_early (int *,int ,int ,int ,int ) ;
 int intel_uc_uses_guc (struct intel_uc*) ;

void intel_huc_fw_init_early(struct intel_huc *huc)
{
 struct intel_gt *gt = huc_to_gt(huc);
 struct intel_uc *uc = &gt->uc;
 struct drm_i915_private *i915 = gt->i915;

 intel_uc_fw_init_early(&huc->fw, INTEL_UC_FW_TYPE_HUC,
          intel_uc_uses_guc(uc),
          INTEL_INFO(i915)->platform, INTEL_REVID(i915));
}
