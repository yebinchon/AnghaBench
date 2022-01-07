
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int GUC_WOPCM_RESERVED ;
 int INTEL_UC_FW_TYPE_HUC ;
 int SZ_1K ;
 int dev_err (int ,char*,int ,int,int) ;
 int intel_uc_fw_type_repr (int ) ;

__attribute__((used)) static inline bool gen9_check_huc_fw_fits(struct drm_i915_private *i915,
       u32 guc_wopcm_size, u32 huc_fw_size)
{





 if (huc_fw_size > guc_wopcm_size - GUC_WOPCM_RESERVED) {
  dev_err(i915->drm.dev, "WOPCM: no space for %s: %uK < %uK\n",
   intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_HUC),
   (guc_wopcm_size - GUC_WOPCM_RESERVED) / SZ_1K,
   huc_fw_size / 1024);
  return 0;
 }

 return 1;
}
