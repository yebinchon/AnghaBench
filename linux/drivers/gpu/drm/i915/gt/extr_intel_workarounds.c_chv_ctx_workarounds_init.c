
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;
struct i915_wa_list {int dummy; } ;


 int CHV_HZ_8X8_MODE_IN_1X ;
 int GEN8_ROW_CHICKEN ;
 int HIZ_CHICKEN ;
 int STALL_DOP_GATING_DISABLE ;
 int WA_SET_BIT_MASKED (int ,int ) ;
 int gen8_ctx_workarounds_init (struct intel_engine_cs*,struct i915_wa_list*) ;

__attribute__((used)) static void chv_ctx_workarounds_init(struct intel_engine_cs *engine,
         struct i915_wa_list *wal)
{
 gen8_ctx_workarounds_init(engine, wal);


 WA_SET_BIT_MASKED(GEN8_ROW_CHICKEN, STALL_DOP_GATING_DISABLE);


 WA_SET_BIT_MASKED(HIZ_CHICKEN, CHV_HZ_8X8_MODE_IN_1X);
}
