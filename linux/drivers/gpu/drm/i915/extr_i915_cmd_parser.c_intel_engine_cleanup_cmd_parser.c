
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;


 int fini_hash_table (struct intel_engine_cs*) ;
 int intel_engine_using_cmd_parser (struct intel_engine_cs*) ;

void intel_engine_cleanup_cmd_parser(struct intel_engine_cs *engine)
{
 if (!intel_engine_using_cmd_parser(engine))
  return;

 fini_hash_table(engine);
}
