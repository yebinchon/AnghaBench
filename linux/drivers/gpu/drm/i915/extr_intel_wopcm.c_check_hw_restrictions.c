
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int CNL_REVID_A0 ;
 scalar_t__ IS_CNL_REVID (struct drm_i915_private*,int ,int ) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int gen9_check_dword_gap (struct drm_i915_private*,int ,int ) ;
 int gen9_check_huc_fw_fits (struct drm_i915_private*,int ,int ) ;

__attribute__((used)) static inline bool check_hw_restrictions(struct drm_i915_private *i915,
      u32 guc_wopcm_base, u32 guc_wopcm_size,
      u32 huc_fw_size)
{
 if (IS_GEN(i915, 9) && !gen9_check_dword_gap(i915, guc_wopcm_base,
           guc_wopcm_size))
  return 0;

 if ((IS_GEN(i915, 9) ||
      IS_CNL_REVID(i915, CNL_REVID_A0, CNL_REVID_A0)) &&
     !gen9_check_huc_fw_fits(i915, guc_wopcm_size, huc_fw_size))
  return 0;

 return 1;
}
