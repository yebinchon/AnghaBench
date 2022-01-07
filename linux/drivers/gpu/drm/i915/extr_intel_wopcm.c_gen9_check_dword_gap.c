
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int dev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 scalar_t__ GEN9_GUC_WOPCM_OFFSET ;
 scalar_t__ SZ_1K ;
 int dev_err (int ,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline bool gen9_check_dword_gap(struct drm_i915_private *i915,
     u32 guc_wopcm_base, u32 guc_wopcm_size)
{
 u32 offset;






 offset = guc_wopcm_base + GEN9_GUC_WOPCM_OFFSET;
 if (offset > guc_wopcm_size ||
     (guc_wopcm_size - offset) < sizeof(u32)) {
  dev_err(i915->drm.dev,
   "WOPCM: invalid GuC region size: %uK < %uK\n",
   guc_wopcm_size / SZ_1K,
   (u32)(offset + sizeof(u32)) / SZ_1K);
  return 0;
 }

 return 1;
}
