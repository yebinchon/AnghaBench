
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {struct drm_i915_private* i915; } ;
struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int BDW_SCRATCH1 ;
 int FF_SLICE_CS_CHICKEN2 ;
 int GEN10_SCRATCH_LNCF2 ;
 int GEN11_ARBITRATION_PRIO_ORDER_MASK ;
 int GEN11_BANK_HASH_ADDR_EXCL_BIT0 ;
 int GEN11_BANK_HASH_ADDR_EXCL_MASK ;
 int GEN11_COHERENT_PARTIAL_WRITE_MERGE_ENABLE ;
 int GEN11_GLBLINVL ;
 int GEN11_HASH_CTRL_EXCL_BIT0 ;
 int GEN11_HASH_CTRL_EXCL_MASK ;
 int GEN11_LQSC_CLEAN_EVICT_DISABLE ;
 int GEN11_SCRATCH2 ;
 int GEN7_DISABLE_DEMAND_PREFETCH ;
 int GEN7_DISABLE_SAMPLER_PREFETCH ;
 int GEN7_FF_SLICE_CS_CHICKEN1 ;
 int GEN7_SARCHKMD ;
 int GEN8_GARBCNTL ;
 int GEN8_L3SQCREG1 ;
 int GEN8_L3SQCREG4 ;
 int GEN8_LQSC_FLUSH_COHERENT_LINES ;
 int GEN9_CSFE_CHICKEN1_RCS ;
 int GEN9_FFSC_PERCTX_PREEMPT_CTRL ;
 int GEN9_GAPS_TSV_CREDIT_DISABLE ;
 int GEN9_LBS_SLA_RETRY_TIMER_DECREMENT_ENABLE ;
 int GEN9_POOLED_EU_LOAD_BALANCING_FIX_DISABLE ;
 int GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE ;
 int ICL_REVID_A0 ;
 int ICL_REVID_B0 ;
 scalar_t__ IS_BROXTON (struct drm_i915_private*) ;
 scalar_t__ IS_COFFEELAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 scalar_t__ IS_GEN_RANGE (struct drm_i915_private*,int,int) ;
 scalar_t__ IS_ICL_REVID (struct drm_i915_private*,int ,int ) ;
 scalar_t__ IS_KABYLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_SKYLAKE (struct drm_i915_private*) ;
 int L3_GENERAL_PRIO_CREDITS (int) ;
 int L3_HIGH_PRIO_CREDITS (int) ;
 int L3_PRIO_CREDITS_MASK ;
 int PMFLUSHDONE_LNEBLK ;
 int PMFLUSHDONE_LNICRSDROP ;
 int PMFLUSH_GAPL3UNBLOCK ;
 int _3D_CHICKEN3 ;
 int _3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE ;
 int wa_masked_en (struct i915_wa_list*,int ,int ) ;
 int wa_write_masked_or (struct i915_wa_list*,int ,int ,int) ;
 int wa_write_or (struct i915_wa_list*,int ,int) ;

__attribute__((used)) static void
rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
{
 struct drm_i915_private *i915 = engine->i915;

 if (IS_GEN(i915, 11)) {

  wa_masked_en(wal,
        _3D_CHICKEN3,
        _3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE);


  wa_write_or(wal,
       GEN8_L3SQCREG4,
       GEN8_LQSC_FLUSH_COHERENT_LINES);





  wa_write_or(wal,
       GEN8_GARBCNTL,
       GEN11_ARBITRATION_PRIO_ORDER_MASK);





  wa_write_masked_or(wal,
       GEN8_GARBCNTL,
       GEN11_HASH_CTRL_EXCL_MASK,
       GEN11_HASH_CTRL_EXCL_BIT0);
  wa_write_masked_or(wal,
       GEN11_GLBLINVL,
       GEN11_BANK_HASH_ADDR_EXCL_MASK,
       GEN11_BANK_HASH_ADDR_EXCL_BIT0);





  wa_write_or(wal,
       GEN8_L3SQCREG4,
       GEN11_LQSC_CLEAN_EVICT_DISABLE);


  wa_write_or(wal,
       GEN10_SCRATCH_LNCF2,
       PMFLUSHDONE_LNICRSDROP |
       PMFLUSH_GAPL3UNBLOCK |
       PMFLUSHDONE_LNEBLK);


  if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_B0))
   wa_write_or(wal,
        GEN7_SARCHKMD,
        GEN7_DISABLE_DEMAND_PREFETCH);


  wa_write_or(wal,
       GEN7_SARCHKMD,
       GEN7_DISABLE_SAMPLER_PREFETCH);


  wa_write_masked_or(wal,
       GEN11_SCRATCH2,
       GEN11_COHERENT_PARTIAL_WRITE_MERGE_ENABLE,
       0);
 }

 if (IS_GEN_RANGE(i915, 9, 11)) {

  wa_masked_en(wal,
        GEN7_FF_SLICE_CS_CHICKEN1,
        GEN9_FFSC_PERCTX_PREEMPT_CTRL);
 }

 if (IS_SKYLAKE(i915) || IS_KABYLAKE(i915) || IS_COFFEELAKE(i915)) {

  wa_write_or(wal,
       GEN8_GARBCNTL,
       GEN9_GAPS_TSV_CREDIT_DISABLE);
 }

 if (IS_BROXTON(i915)) {

  wa_masked_en(wal,
        FF_SLICE_CS_CHICKEN2,
        GEN9_POOLED_EU_LOAD_BALANCING_FIX_DISABLE);
 }

 if (IS_GEN(i915, 9)) {

  wa_masked_en(wal,
        GEN9_CSFE_CHICKEN1_RCS,
        GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE);


  wa_write_or(wal,
       BDW_SCRATCH1,
       GEN9_LBS_SLA_RETRY_TIMER_DECREMENT_ENABLE);


  if (IS_GEN9_LP(i915))
   wa_write_masked_or(wal,
        GEN8_L3SQCREG1,
        L3_PRIO_CREDITS_MASK,
        L3_GENERAL_PRIO_CREDITS(62) |
        L3_HIGH_PRIO_CREDITS(2));


  wa_write_or(wal,
       GEN8_L3SQCREG4,
       GEN8_LQSC_FLUSH_COHERENT_LINES);
 }
}
