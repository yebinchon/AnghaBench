
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {scalar_t__ class; int whitelist; } ;


 scalar_t__ RENDER_CLASS ;
 int gen9_whitelist_build (int *) ;

__attribute__((used)) static void bxt_whitelist_build(struct intel_engine_cs *engine)
{
 if (engine->class != RENDER_CLASS)
  return;

 gen9_whitelist_build(&engine->whitelist);
}
