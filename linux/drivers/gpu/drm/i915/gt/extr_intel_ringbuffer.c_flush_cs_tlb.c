
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int name; int mmio_base; int uncore; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 int DRM_ERROR (char*,int ) ;
 int ENGINE_READ (struct intel_engine_cs*,int ) ;
 int ENGINE_WRITE (struct intel_engine_cs*,int (*) (int ),int ) ;
 int INSTPM_SYNC_FLUSH ;
 int INSTPM_TLB_INVALIDATE ;
 int IS_GEN_RANGE (struct drm_i915_private*,int,int) ;
 int MODE_IDLE ;
 int RING_INSTPM (int ) ;
 int RING_MI_MODE ;
 int WARN_ON (int) ;
 int _MASKED_BIT_ENABLE (int) ;
 scalar_t__ intel_wait_for_register (int ,int ,int,int ,int) ;

__attribute__((used)) static void flush_cs_tlb(struct intel_engine_cs *engine)
{
 struct drm_i915_private *dev_priv = engine->i915;

 if (!IS_GEN_RANGE(dev_priv, 6, 7))
  return;


 WARN_ON((ENGINE_READ(engine, RING_MI_MODE) & MODE_IDLE) == 0);

 ENGINE_WRITE(engine, RING_INSTPM,
       _MASKED_BIT_ENABLE(INSTPM_TLB_INVALIDATE |
     INSTPM_SYNC_FLUSH));
 if (intel_wait_for_register(engine->uncore,
        RING_INSTPM(engine->mmio_base),
        INSTPM_SYNC_FLUSH, 0,
        1000))
  DRM_ERROR("%s: wait for SyncFlush to complete for TLB invalidation timed out\n",
     engine->name);
}
