
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;
struct i915_wa_list {int dummy; } ;


 int gen9_ctx_workarounds_init (struct intel_engine_cs*,struct i915_wa_list*) ;
 int skl_tune_iz_hashing (struct intel_engine_cs*,struct i915_wa_list*) ;

__attribute__((used)) static void skl_ctx_workarounds_init(struct intel_engine_cs *engine,
         struct i915_wa_list *wal)
{
 gen9_ctx_workarounds_init(engine, wal);
 skl_tune_iz_hashing(engine, wal);
}
