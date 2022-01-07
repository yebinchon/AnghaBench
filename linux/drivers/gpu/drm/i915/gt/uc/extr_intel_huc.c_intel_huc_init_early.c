
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* value; void* mask; int reg; } ;
struct intel_huc {TYPE_1__ status; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {struct drm_i915_private* i915; } ;


 int GEN11_HUC_KERNEL_LOAD_INFO ;
 void* HUC_FW_VERIFIED ;
 void* HUC_LOAD_SUCCESSFUL ;
 int HUC_STATUS2 ;
 int INTEL_GEN (struct drm_i915_private*) ;
 TYPE_2__* huc_to_gt (struct intel_huc*) ;
 int intel_huc_fw_init_early (struct intel_huc*) ;

void intel_huc_init_early(struct intel_huc *huc)
{
 struct drm_i915_private *i915 = huc_to_gt(huc)->i915;

 intel_huc_fw_init_early(huc);

 if (INTEL_GEN(i915) >= 11) {
  huc->status.reg = GEN11_HUC_KERNEL_LOAD_INFO;
  huc->status.mask = HUC_LOAD_SUCCESSFUL;
  huc->status.value = HUC_LOAD_SUCCESSFUL;
 } else {
  huc->status.reg = HUC_STATUS2;
  huc->status.mask = HUC_FW_VERIFIED;
  huc->status.value = HUC_FW_VERIFIED;
 }
}
