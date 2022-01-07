
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS ;
 int GEN7_UCGCTL4 ;
 int GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE ;
 int GEN9_GAMT_ECO_REG_RW_IA ;
 scalar_t__ IS_SKL_REVID (struct drm_i915_private*,int ,int ) ;
 int REVID_FOREVER ;
 int SKL_REVID_H0 ;
 int gen9_gt_workarounds_init (struct drm_i915_private*,struct i915_wa_list*) ;
 int wa_write_or (struct i915_wa_list*,int ,int ) ;

__attribute__((used)) static void
skl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
{
 gen9_gt_workarounds_init(i915, wal);


 wa_write_or(wal,
      GEN7_UCGCTL4,
      GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE);


 if (IS_SKL_REVID(i915, SKL_REVID_H0, REVID_FOREVER))
  wa_write_or(wal,
       GEN9_GAMT_ECO_REG_RW_IA,
       GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
}
