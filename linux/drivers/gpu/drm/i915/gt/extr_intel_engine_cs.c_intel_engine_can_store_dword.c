
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int class; int i915; } ;


 int INTEL_GEN (int ) ;
 int IS_I915G (int ) ;
 int IS_I915GM (int ) ;
 int VIDEO_DECODE_CLASS ;

bool intel_engine_can_store_dword(struct intel_engine_cs *engine)
{
 switch (INTEL_GEN(engine->i915)) {
 case 2:
  return 0;
 case 3:

  return !(IS_I915G(engine->i915) || IS_I915GM(engine->i915));
 case 6:
  return engine->class != VIDEO_DECODE_CLASS;
 default:
  return 1;
 }
}
