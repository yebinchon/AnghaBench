
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {struct drm_i915_private* i915; } ;
struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int DOP_CLOCK_GATING_DISABLE ;
 int GEN7_ROW_CHICKEN2 ;
 int GEN8_ROW_CHICKEN ;
 int GEN8_SAMPLER_POWER_BYPASS_DIS ;
 int HALF_SLICE_CHICKEN3 ;
 int HDC_CHICKEN0 ;
 int HDC_FENCE_DEST_SLM_DISABLE ;
 int HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT ;
 scalar_t__ IS_BDW_GT3 (struct drm_i915_private*) ;
 int STALL_DOP_GATING_DISABLE ;
 int WA_SET_BIT_MASKED (int ,int) ;
 int gen8_ctx_workarounds_init (struct intel_engine_cs*,struct i915_wa_list*) ;

__attribute__((used)) static void bdw_ctx_workarounds_init(struct intel_engine_cs *engine,
         struct i915_wa_list *wal)
{
 struct drm_i915_private *i915 = engine->i915;

 gen8_ctx_workarounds_init(engine, wal);


 WA_SET_BIT_MASKED(GEN8_ROW_CHICKEN, STALL_DOP_GATING_DISABLE);






 WA_SET_BIT_MASKED(GEN7_ROW_CHICKEN2,
     DOP_CLOCK_GATING_DISABLE);

 WA_SET_BIT_MASKED(HALF_SLICE_CHICKEN3,
     GEN8_SAMPLER_POWER_BYPASS_DIS);

 WA_SET_BIT_MASKED(HDC_CHICKEN0,

     HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT |

     (IS_BDW_GT3(i915) ? HDC_FENCE_DEST_SLM_DISABLE : 0));
}
