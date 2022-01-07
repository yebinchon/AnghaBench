
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int BDW_DISABLE_HDC_INVALIDATION ;
 int ECOCHK_DIS_TLB ;
 int GAM_ECOCHK ;
 scalar_t__ HAS_LLC (struct drm_i915_private*) ;
 int IS_COFFEELAKE (struct drm_i915_private*) ;
 int MMCD_HOTSPOT_EN ;
 int MMCD_MISC_CTRL ;
 int MMCD_PCLA ;
 int wa_write_or (struct i915_wa_list*,int ,int) ;

__attribute__((used)) static void
gen9_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
{

 if (!IS_COFFEELAKE(i915))
  wa_write_or(wal,
       GAM_ECOCHK,
       ECOCHK_DIS_TLB);

 if (HAS_LLC(i915)) {





  wa_write_or(wal,
       MMCD_MISC_CTRL,
       MMCD_PCLA | MMCD_HOTSPOT_EN);
 }


 wa_write_or(wal,
      GAM_ECOCHK,
      BDW_DISABLE_HDC_INVALIDATION);
}
