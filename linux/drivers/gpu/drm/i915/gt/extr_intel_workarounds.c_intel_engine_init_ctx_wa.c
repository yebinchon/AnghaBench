
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int ctx_wa_list; } ;


 int __intel_engine_init_ctx_wa (struct intel_engine_cs*,int *,char*) ;

void intel_engine_init_ctx_wa(struct intel_engine_cs *engine)
{
 __intel_engine_init_ctx_wa(engine, &engine->ctx_wa_list, "context");
}
