
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int irq_enable_mask; struct drm_i915_private* i915; } ;
struct drm_i915_private {int irq_mask; int uncore; } ;


 int ENGINE_POSTING_READ16 (struct intel_engine_cs*,int ) ;
 int GEN2_IMR ;
 int RING_IMR ;
 int intel_uncore_write16 (int *,int ,int ) ;

__attribute__((used)) static void
i8xx_irq_enable(struct intel_engine_cs *engine)
{
 struct drm_i915_private *i915 = engine->i915;

 i915->irq_mask &= ~engine->irq_enable_mask;
 intel_uncore_write16(&i915->uncore, GEN2_IMR, i915->irq_mask);
 ENGINE_POSTING_READ16(engine, RING_IMR);
}
