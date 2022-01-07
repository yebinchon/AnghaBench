
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int class; } ;



 int ENODEV ;
 int MISSING_CASE (int) ;



 int setup_bcs (struct intel_engine_cs*) ;
 int setup_common (struct intel_engine_cs*) ;
 int setup_rcs (struct intel_engine_cs*) ;
 int setup_vcs (struct intel_engine_cs*) ;
 int setup_vecs (struct intel_engine_cs*) ;

int intel_ring_submission_setup(struct intel_engine_cs *engine)
{
 setup_common(engine);

 switch (engine->class) {
 case 130:
  setup_rcs(engine);
  break;
 case 129:
  setup_vcs(engine);
  break;
 case 131:
  setup_bcs(engine);
  break;
 case 128:
  setup_vecs(engine);
  break;
 default:
  MISSING_CASE(engine->class);
  return -ENODEV;
 }

 return 0;
}
