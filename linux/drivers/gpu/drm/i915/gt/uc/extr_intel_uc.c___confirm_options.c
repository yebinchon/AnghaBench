
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_uc {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct TYPE_6__ {int enable_guc; } ;
struct TYPE_5__ {struct drm_i915_private* i915; } ;


 int DRM_DEV_DEBUG_DRIVER (int ,char*,int,int ,int ,int ) ;
 int ENABLE_GUC_LOAD_HUC ;
 int ENABLE_GUC_SUBMISSION ;
 int GEM_BUG_ON (int ) ;
 int dev_info (int ,char*,int,char*) ;
 TYPE_3__ i915_modparams ;
 int intel_uc_supports_guc (struct intel_uc*) ;
 int intel_uc_supports_guc_submission (struct intel_uc*) ;
 int intel_uc_supports_huc (struct intel_uc*) ;
 int intel_uc_uses_guc (struct intel_uc*) ;
 int intel_uc_uses_guc_submission (struct intel_uc*) ;
 int intel_uc_uses_huc (struct intel_uc*) ;
 TYPE_2__* uc_to_gt (struct intel_uc*) ;
 int yesno (int ) ;

__attribute__((used)) static void __confirm_options(struct intel_uc *uc)
{
 struct drm_i915_private *i915 = uc_to_gt(uc)->i915;

 DRM_DEV_DEBUG_DRIVER(i915->drm.dev,
        "enable_guc=%d (guc:%s submission:%s huc:%s)\n",
        i915_modparams.enable_guc,
        yesno(intel_uc_uses_guc(uc)),
        yesno(intel_uc_uses_guc_submission(uc)),
        yesno(intel_uc_uses_huc(uc)));

 if (i915_modparams.enable_guc == -1)
  return;

 if (i915_modparams.enable_guc == 0) {
  GEM_BUG_ON(intel_uc_uses_guc(uc));
  GEM_BUG_ON(intel_uc_uses_guc_submission(uc));
  GEM_BUG_ON(intel_uc_uses_huc(uc));
  return;
 }

 if (!intel_uc_supports_guc(uc))
  dev_info(i915->drm.dev,
    "Incompatible option enable_guc=%d - %s\n",
    i915_modparams.enable_guc, "GuC is not supported!");

 if (i915_modparams.enable_guc & ENABLE_GUC_LOAD_HUC &&
     !intel_uc_supports_huc(uc))
  dev_info(i915->drm.dev,
    "Incompatible option enable_guc=%d - %s\n",
    i915_modparams.enable_guc, "HuC is not supported!");

 if (i915_modparams.enable_guc & ENABLE_GUC_SUBMISSION &&
     !intel_uc_supports_guc_submission(uc))
  dev_info(i915->drm.dev,
    "Incompatible option enable_guc=%d - %s\n",
    i915_modparams.enable_guc, "GuC submission is N/A");

 if (i915_modparams.enable_guc & ~(ENABLE_GUC_SUBMISSION |
       ENABLE_GUC_LOAD_HUC))
  dev_info(i915->drm.dev,
    "Incompatible option enable_guc=%d - %s\n",
    i915_modparams.enable_guc, "undocumented flag");
}
