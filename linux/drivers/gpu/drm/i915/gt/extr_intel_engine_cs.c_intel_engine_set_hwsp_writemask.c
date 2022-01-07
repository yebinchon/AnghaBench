
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_engine_cs {scalar_t__ class; int i915; } ;


 int ENGINE_WRITE (struct intel_engine_cs*,int ,int ) ;
 int ENGINE_WRITE16 (struct intel_engine_cs*,int ,int ) ;
 int INTEL_GEN (int ) ;
 scalar_t__ RENDER_CLASS ;
 int RING_HWSTAM ;

void intel_engine_set_hwsp_writemask(struct intel_engine_cs *engine, u32 mask)
{




 if (INTEL_GEN(engine->i915) < 6 && engine->class != RENDER_CLASS)
  return;

 if (INTEL_GEN(engine->i915) >= 3)
  ENGINE_WRITE(engine, RING_HWSTAM, mask);
 else
  ENGINE_WRITE16(engine, RING_HWSTAM, mask);
}
