
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int wa_list; int kernel_context; } ;


 int engine_wa_list_verify (int ,int *,char const*) ;

int intel_engine_verify_workarounds(struct intel_engine_cs *engine,
        const char *from)
{
 return engine_wa_list_verify(engine->kernel_context,
         &engine->wa_list,
         from);
}
