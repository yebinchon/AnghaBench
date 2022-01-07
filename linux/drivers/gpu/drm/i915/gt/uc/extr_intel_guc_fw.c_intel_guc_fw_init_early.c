
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_guc {int fw; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {int platform; } ;
struct TYPE_3__ {struct drm_i915_private* i915; } ;


 int HAS_GT_UC (struct drm_i915_private*) ;
 TYPE_2__* INTEL_INFO (struct drm_i915_private*) ;
 int INTEL_REVID (struct drm_i915_private*) ;
 int INTEL_UC_FW_TYPE_GUC ;
 TYPE_1__* guc_to_gt (struct intel_guc*) ;
 int intel_uc_fw_init_early (int *,int ,int ,int ,int ) ;

void intel_guc_fw_init_early(struct intel_guc *guc)
{
 struct drm_i915_private *i915 = guc_to_gt(guc)->i915;

 intel_uc_fw_init_early(&guc->fw, INTEL_UC_FW_TYPE_GUC, HAS_GT_UC(i915),
          INTEL_INFO(i915)->platform, INTEL_REVID(i915));
}
