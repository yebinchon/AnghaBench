
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_10__ {int base; int size; } ;
struct intel_wopcm {scalar_t__ size; TYPE_5__ guc; } ;
struct TYPE_7__ {int fw; } ;
struct TYPE_6__ {int fw; } ;
struct TYPE_8__ {TYPE_2__ huc; TYPE_1__ guc; } ;
struct intel_gt {int uncore; TYPE_3__ uc; } ;
struct TYPE_9__ {int dev; } ;
struct drm_i915_private {TYPE_4__ drm; struct intel_gt gt; } ;


 scalar_t__ ALIGN (scalar_t__,int ) ;
 int DRM_DEV_DEBUG_DRIVER (int ,char*,scalar_t__,scalar_t__) ;
 int GEM_BUG_ON (int) ;
 int GUC_WOPCM_OFFSET_ALIGNMENT ;
 scalar_t__ GUC_WOPCM_SIZE_MASK ;
 scalar_t__ SZ_1K ;
 scalar_t__ WOPCM_RESERVED_SIZE ;
 scalar_t__ __check_layout (struct drm_i915_private*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ __wopcm_regs_locked (int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ context_reserved_size (struct drm_i915_private*) ;
 scalar_t__ i915_inject_probe_failure (struct drm_i915_private*) ;
 scalar_t__ intel_uc_fw_get_upload_size (int *) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 struct drm_i915_private* wopcm_to_i915 (struct intel_wopcm*) ;

void intel_wopcm_init(struct intel_wopcm *wopcm)
{
 struct drm_i915_private *i915 = wopcm_to_i915(wopcm);
 struct intel_gt *gt = &i915->gt;
 u32 guc_fw_size = intel_uc_fw_get_upload_size(&gt->uc.guc.fw);
 u32 huc_fw_size = intel_uc_fw_get_upload_size(&gt->uc.huc.fw);
 u32 ctx_rsvd = context_reserved_size(i915);
 u32 guc_wopcm_base;
 u32 guc_wopcm_size;

 if (!guc_fw_size)
  return;

 GEM_BUG_ON(!wopcm->size);
 GEM_BUG_ON(wopcm->guc.base);
 GEM_BUG_ON(wopcm->guc.size);
 GEM_BUG_ON(guc_fw_size >= wopcm->size);
 GEM_BUG_ON(huc_fw_size >= wopcm->size);
 GEM_BUG_ON(ctx_rsvd + WOPCM_RESERVED_SIZE >= wopcm->size);

 if (i915_inject_probe_failure(i915))
  return;

 if (__wopcm_regs_locked(gt->uncore, &guc_wopcm_base, &guc_wopcm_size)) {
  DRM_DEV_DEBUG_DRIVER(i915->drm.dev,
         "GuC WOPCM is already locked [%uK, %uK)\n",
         guc_wopcm_base / SZ_1K,
         guc_wopcm_size / SZ_1K);
  goto check;
 }





 guc_wopcm_base = huc_fw_size + WOPCM_RESERVED_SIZE;
 guc_wopcm_base = ALIGN(guc_wopcm_base, GUC_WOPCM_OFFSET_ALIGNMENT);





 guc_wopcm_base = min(guc_wopcm_base, wopcm->size - ctx_rsvd);


 guc_wopcm_size = wopcm->size - ctx_rsvd - guc_wopcm_base;
 guc_wopcm_size &= GUC_WOPCM_SIZE_MASK;

 DRM_DEV_DEBUG_DRIVER(i915->drm.dev, "Calculated GuC WOPCM [%uK, %uK)\n",
        guc_wopcm_base / SZ_1K, guc_wopcm_size / SZ_1K);

check:
 if (__check_layout(i915, wopcm->size, guc_wopcm_base, guc_wopcm_size,
      guc_fw_size, huc_fw_size)) {
  wopcm->guc.base = guc_wopcm_base;
  wopcm->guc.size = guc_wopcm_size;
  GEM_BUG_ON(!wopcm->guc.base);
  GEM_BUG_ON(!wopcm->guc.size);
 }
}
