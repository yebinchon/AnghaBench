
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;
struct i915_wa_list {int dummy; } ;


 int COMMON_SLICE_CHICKEN2 ;
 int GEN8_ROW_CHICKEN ;
 int GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION ;
 int STALL_DOP_GATING_DISABLE ;
 int WA_SET_BIT_MASKED (int ,int ) ;
 int gen9_ctx_workarounds_init (struct intel_engine_cs*,struct i915_wa_list*) ;

__attribute__((used)) static void bxt_ctx_workarounds_init(struct intel_engine_cs *engine,
         struct i915_wa_list *wal)
{
 gen9_ctx_workarounds_init(engine, wal);


 WA_SET_BIT_MASKED(GEN8_ROW_CHICKEN,
     STALL_DOP_GATING_DISABLE);


 WA_SET_BIT_MASKED(COMMON_SLICE_CHICKEN2,
     GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
}
