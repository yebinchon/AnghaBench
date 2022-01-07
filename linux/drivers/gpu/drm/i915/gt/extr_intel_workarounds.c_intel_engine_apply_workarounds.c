
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int wa_list; int uncore; } ;


 int wa_list_apply (int ,int *) ;

void intel_engine_apply_workarounds(struct intel_engine_cs *engine)
{
 wa_list_apply(engine->uncore, &engine->wa_list);
}
