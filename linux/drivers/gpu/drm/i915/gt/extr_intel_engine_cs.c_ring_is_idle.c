
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int i915; int mmio_base; } ;


 int ENGINE_READ (struct intel_engine_cs*,int ) ;
 int HEAD_ADDR ;
 scalar_t__ I915_SELFTEST_ONLY (int) ;
 int INTEL_GEN (int ) ;
 int MODE_IDLE ;
 int RING_HEAD ;
 int RING_MI_MODE ;
 int RING_TAIL ;
 int TAIL_ADDR ;
 int intel_engine_pm_get_if_awake (struct intel_engine_cs*) ;
 int intel_engine_pm_put (struct intel_engine_cs*) ;

__attribute__((used)) static bool ring_is_idle(struct intel_engine_cs *engine)
{
 bool idle = 1;

 if (I915_SELFTEST_ONLY(!engine->mmio_base))
  return 1;

 if (!intel_engine_pm_get_if_awake(engine))
  return 1;


 if ((ENGINE_READ(engine, RING_HEAD) & HEAD_ADDR) !=
     (ENGINE_READ(engine, RING_TAIL) & TAIL_ADDR))
  idle = 0;


 if (INTEL_GEN(engine->i915) > 2 &&
     !(ENGINE_READ(engine, RING_MI_MODE) & MODE_IDLE))
  idle = 0;

 intel_engine_pm_put(engine);

 return idle;
}
