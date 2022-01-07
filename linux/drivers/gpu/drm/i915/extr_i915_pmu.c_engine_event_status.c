
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int i915; } ;
typedef enum drm_i915_pmu_engine_sample { ____Placeholder_drm_i915_pmu_engine_sample } drm_i915_pmu_engine_sample ;


 int ENODEV ;
 int ENOENT ;



 int INTEL_GEN (int ) ;

__attribute__((used)) static int
engine_event_status(struct intel_engine_cs *engine,
      enum drm_i915_pmu_engine_sample sample)
{
 switch (sample) {
 case 130:
 case 128:
  break;
 case 129:
  if (INTEL_GEN(engine->i915) < 6)
   return -ENODEV;
  break;
 default:
  return -ENOENT;
 }

 return 0;
}
