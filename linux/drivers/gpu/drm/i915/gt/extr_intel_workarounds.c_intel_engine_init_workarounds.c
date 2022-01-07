
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_wa_list {int dummy; } ;
struct intel_engine_cs {int name; int i915; struct i915_wa_list wa_list; } ;


 int INTEL_GEN (int ) ;
 int engine_init_workarounds (struct intel_engine_cs*,struct i915_wa_list*) ;
 int wa_init_finish (struct i915_wa_list*) ;
 int wa_init_start (struct i915_wa_list*,char*,int ) ;

void intel_engine_init_workarounds(struct intel_engine_cs *engine)
{
 struct i915_wa_list *wal = &engine->wa_list;

 if (INTEL_GEN(engine->i915) < 8)
  return;

 wa_init_start(wal, "engine", engine->name);
 engine_init_workarounds(engine, wal);
 wa_init_finish(wal);
}
