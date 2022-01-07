
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_engine_cs {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 int ACTHD ;
 int ENGINE_READ (struct intel_engine_cs const*,int ) ;
 int ENGINE_READ64 (struct intel_engine_cs const*,int ,int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int RING_ACTHD ;
 int RING_ACTHD_UDW ;

u64 intel_engine_get_active_head(const struct intel_engine_cs *engine)
{
 struct drm_i915_private *i915 = engine->i915;

 u64 acthd;

 if (INTEL_GEN(i915) >= 8)
  acthd = ENGINE_READ64(engine, RING_ACTHD, RING_ACTHD_UDW);
 else if (INTEL_GEN(i915) >= 4)
  acthd = ENGINE_READ(engine, RING_ACTHD);
 else
  acthd = ENGINE_READ(engine, ACTHD);

 return acthd;
}
