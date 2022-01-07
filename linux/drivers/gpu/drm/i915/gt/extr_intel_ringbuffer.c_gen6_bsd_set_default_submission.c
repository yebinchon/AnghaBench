
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int submit_request; } ;


 int gen6_bsd_submit_request ;
 int i9xx_set_default_submission (struct intel_engine_cs*) ;

__attribute__((used)) static void gen6_bsd_set_default_submission(struct intel_engine_cs *engine)
{
 i9xx_set_default_submission(engine);
 engine->submit_request = gen6_bsd_submit_request;
}
