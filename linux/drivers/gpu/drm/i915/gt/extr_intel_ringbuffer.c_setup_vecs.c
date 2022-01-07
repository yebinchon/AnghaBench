
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int emit_fini_breadcrumb; int irq_disable; int irq_enable; int irq_enable_mask; int emit_flush; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 int GEM_BUG_ON (int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int PM_VEBOX_USER_INTERRUPT ;
 int gen6_ring_flush ;
 int gen7_xcs_emit_breadcrumb ;
 int hsw_vebox_irq_disable ;
 int hsw_vebox_irq_enable ;

__attribute__((used)) static void setup_vecs(struct intel_engine_cs *engine)
{
 struct drm_i915_private *i915 = engine->i915;

 GEM_BUG_ON(INTEL_GEN(i915) < 7);

 engine->emit_flush = gen6_ring_flush;
 engine->irq_enable_mask = PM_VEBOX_USER_INTERRUPT;
 engine->irq_enable = hsw_vebox_irq_enable;
 engine->irq_disable = hsw_vebox_irq_disable;

 engine->emit_fini_breadcrumb = gen7_xcs_emit_breadcrumb;
}
