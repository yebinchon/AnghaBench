
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int name; int mmio_base; int uncore; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 int DRM_ERROR (char*,int ) ;
 int ENGINE_READ (struct intel_engine_cs*,int (*) (int )) ;
 int ENGINE_WRITE (struct intel_engine_cs*,int (*) (int ),int) ;
 int HEAD_ADDR ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int MODE_IDLE ;
 int RING_CTL (int ) ;
 int RING_HEAD (int ) ;
 int RING_MI_MODE (int ) ;
 int RING_TAIL (int ) ;
 int STOP_RING ;
 int _MASKED_BIT_ENABLE (int ) ;
 scalar_t__ intel_wait_for_register (int ,int ,int ,int ,int) ;

__attribute__((used)) static bool stop_ring(struct intel_engine_cs *engine)
{
 struct drm_i915_private *dev_priv = engine->i915;

 if (INTEL_GEN(dev_priv) > 2) {
  ENGINE_WRITE(engine,
        RING_MI_MODE, _MASKED_BIT_ENABLE(STOP_RING));
  if (intel_wait_for_register(engine->uncore,
         RING_MI_MODE(engine->mmio_base),
         MODE_IDLE,
         MODE_IDLE,
         1000)) {
   DRM_ERROR("%s : timed out trying to stop ring\n",
      engine->name);






   if (ENGINE_READ(engine, RING_HEAD) !=
       ENGINE_READ(engine, RING_TAIL))
    return 0;
  }
 }

 ENGINE_WRITE(engine, RING_HEAD, ENGINE_READ(engine, RING_TAIL));

 ENGINE_WRITE(engine, RING_HEAD, 0);
 ENGINE_WRITE(engine, RING_TAIL, 0);


 ENGINE_WRITE(engine, RING_CTL, 0);

 return (ENGINE_READ(engine, RING_HEAD) & HEAD_ADDR) == 0;
}
