
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int uncore; struct drm_i915_private* i915; } ;
struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int FLOAT_BLEND_OPTIMIZATION_ENABLE ;
 int GEN10_CACHE_MODE_SS ;
 int GEN10_SAMPLER_MODE ;
 int GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC ;
 int GEN11_COMMON_SLICE_CHICKEN3 ;
 int GEN11_SAMPLER_ENABLE_HEADLESS_MSG ;
 int GEN11_TDL_CLOCK_GATING_FIX_DISABLE ;
 int GEN7_ROW_CHICKEN2 ;
 int GEN8_CS_CHICKEN1 ;
 int GEN8_ERRDETBCTRL ;
 int GEN8_L3CNTLREG ;
 int GEN9_PREEMPT_GPGPU_LEVEL_MASK ;
 int GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL ;
 int HDC_FORCE_NON_COHERENT ;
 int ICL_HDC_MODE ;
 int ICL_REVID_A0 ;
 int ICL_REVID_B0 ;
 scalar_t__ IS_ICL_REVID (struct drm_i915_private*,int ,int ) ;
 int PUSH_CONSTANT_DEREF_DISABLE ;
 int WA_SET_BIT_MASKED (int ,int ) ;
 int WA_SET_FIELD_MASKED (int ,int ,int ) ;
 int _MASKED_BIT_ENABLE (int ) ;
 int intel_uncore_read (int ,int ) ;
 int wa_write (struct i915_wa_list*,int ,int) ;
 int wa_write_masked_or (struct i915_wa_list*,int ,int ,int ) ;

__attribute__((used)) static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
         struct i915_wa_list *wal)
{
 struct drm_i915_private *i915 = engine->i915;


 wa_write(wal,
   GEN8_L3CNTLREG,
   intel_uncore_read(engine->uncore, GEN8_L3CNTLREG) |
   GEN8_ERRDETBCTRL);




 if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_B0))
  WA_SET_BIT_MASKED(GEN7_ROW_CHICKEN2,
      PUSH_CONSTANT_DEREF_DISABLE);
 WA_SET_BIT_MASKED(ICL_HDC_MODE, HDC_FORCE_NON_COHERENT);




 if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_A0))
  WA_SET_BIT_MASKED(GEN7_ROW_CHICKEN2,
      GEN11_TDL_CLOCK_GATING_FIX_DISABLE);


 if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_A0))
  WA_SET_BIT_MASKED(GEN11_COMMON_SLICE_CHICKEN3,
      GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC);


 wa_write_masked_or(wal,
      GEN10_CACHE_MODE_SS,
      0,
      _MASKED_BIT_ENABLE(FLOAT_BLEND_OPTIMIZATION_ENABLE));


 WA_SET_FIELD_MASKED(GEN8_CS_CHICKEN1,
       GEN9_PREEMPT_GPGPU_LEVEL_MASK,
       GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);


 WA_SET_BIT_MASKED(GEN10_SAMPLER_MODE,
     GEN11_SAMPLER_ENABLE_HEADLESS_MSG);
}
