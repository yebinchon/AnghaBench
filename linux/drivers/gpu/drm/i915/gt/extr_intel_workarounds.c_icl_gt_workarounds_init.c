
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int CGPSF_CLKGATE_DIS ;
 int GAMT_CHKN_BIT_REG ;
 int GAMT_CHKN_DISABLE_L3_COH_PIPE ;
 int GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS ;
 int GAMW_ECO_DEV_CTX_RELOAD_DISABLE ;
 int GEN11_GACB_PERF_CTRL ;
 int GEN11_HASH_CTRL_BIT0 ;
 int GEN11_HASH_CTRL_BIT4 ;
 int GEN11_HASH_CTRL_MASK ;
 int GEN11_LSN_UNSLCVC ;
 int GEN11_LSN_UNSLCVC_GAFS_HALF_CL2_MAXALLOC ;
 int GEN11_LSN_UNSLCVC_GAFS_HALF_SF_MAXALLOC ;
 int GEN8_GAMW_ECO_DEV_RW_IA ;
 int GEN9_GAMT_ECO_REG_RW_IA ;
 int GWUNIT_CLKGATE_DIS ;
 int ICL_REVID_A0 ;
 int ICL_REVID_B0 ;
 int INF_UNIT_LEVEL_CLKGATE ;
 scalar_t__ IS_ICL_REVID (struct drm_i915_private*,int ,int ) ;
 int MSCUNIT_CLKGATE_DIS ;
 int SLICE_UNIT_LEVEL_CLKGATE ;
 int SUBSLICE_UNIT_LEVEL_CLKGATE ;
 int wa_init_mcr (struct drm_i915_private*,struct i915_wa_list*) ;
 int wa_write_masked_or (struct i915_wa_list*,int ,int ,int) ;
 int wa_write_or (struct i915_wa_list*,int ,int) ;

__attribute__((used)) static void
icl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
{
 wa_init_mcr(i915, wal);


 wa_write_or(wal,
      GEN9_GAMT_ECO_REG_RW_IA,
      GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);


 wa_write_masked_or(wal,
      GEN11_GACB_PERF_CTRL,
      GEN11_HASH_CTRL_MASK,
      GEN11_HASH_CTRL_BIT0 | GEN11_HASH_CTRL_BIT4);




 wa_write_or(wal,
      GEN11_LSN_UNSLCVC,
      GEN11_LSN_UNSLCVC_GAFS_HALF_SF_MAXALLOC |
      GEN11_LSN_UNSLCVC_GAFS_HALF_CL2_MAXALLOC);




 wa_write_or(wal,
      GEN8_GAMW_ECO_DEV_RW_IA,
      GAMW_ECO_DEV_CTX_RELOAD_DISABLE);


 if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_A0))
  wa_write_or(wal,
       SLICE_UNIT_LEVEL_CLKGATE,
       MSCUNIT_CLKGATE_DIS);


 wa_write_or(wal,
      SUBSLICE_UNIT_LEVEL_CLKGATE,
      GWUNIT_CLKGATE_DIS);


 if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_B0))
  wa_write_or(wal,
       INF_UNIT_LEVEL_CLKGATE,
       CGPSF_CLKGATE_DIS);




 wa_write_or(wal,
      GAMT_CHKN_BIT_REG,
      GAMT_CHKN_DISABLE_L3_COH_PIPE);
}
