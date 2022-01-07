
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int CNL_REVID_B0 ;
 int GAMT_CHKN_BIT_REG ;
 int GAMT_CHKN_DISABLE_I2M_CYCLE_ON_WR_PORT ;
 int GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS ;
 int GEN9_GAMT_ECO_REG_RW_IA ;
 scalar_t__ IS_CNL_REVID (struct drm_i915_private*,int ,int ) ;
 int wa_init_mcr (struct drm_i915_private*,struct i915_wa_list*) ;
 int wa_write_or (struct i915_wa_list*,int ,int ) ;

__attribute__((used)) static void
cnl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
{
 wa_init_mcr(i915, wal);


 if (IS_CNL_REVID(i915, CNL_REVID_B0, CNL_REVID_B0))
  wa_write_or(wal,
       GAMT_CHKN_BIT_REG,
       GAMT_CHKN_DISABLE_I2M_CYCLE_ON_WR_PORT);


 wa_write_or(wal,
      GEN9_GAMT_ECO_REG_RW_IA,
      GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
}
