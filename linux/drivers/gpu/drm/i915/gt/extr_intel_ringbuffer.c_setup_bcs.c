
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int emit_fini_breadcrumb; int irq_enable_mask; int emit_flush; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 int GT_BLT_USER_INTERRUPT ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int gen6_ring_flush ;
 int gen6_xcs_emit_breadcrumb ;
 int gen7_xcs_emit_breadcrumb ;

__attribute__((used)) static void setup_bcs(struct intel_engine_cs *engine)
{
 struct drm_i915_private *i915 = engine->i915;

 engine->emit_flush = gen6_ring_flush;
 engine->irq_enable_mask = GT_BLT_USER_INTERRUPT;

 if (IS_GEN(i915, 6))
  engine->emit_fini_breadcrumb = gen6_xcs_emit_breadcrumb;
 else
  engine->emit_fini_breadcrumb = gen7_xcs_emit_breadcrumb;
}
