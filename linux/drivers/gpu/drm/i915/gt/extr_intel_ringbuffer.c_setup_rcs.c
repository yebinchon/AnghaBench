
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int resume; int emit_bb_start; int irq_enable_mask; void* emit_flush; int emit_fini_breadcrumb; int irq_keep_mask; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 int GT_RENDER_L3_PARITY_ERROR_INTERRUPT ;
 int GT_RENDER_USER_INTERRUPT ;
 scalar_t__ HAS_L3_DPF (struct drm_i915_private*) ;
 int I915_USER_INTERRUPT ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 void* gen2_render_ring_flush ;
 void* gen4_render_ring_flush ;
 int gen6_rcs_emit_breadcrumb ;
 void* gen6_render_ring_flush ;
 int gen7_rcs_emit_breadcrumb ;
 void* gen7_render_ring_flush ;
 int hsw_emit_bb_start ;
 int rcs_resume ;

__attribute__((used)) static void setup_rcs(struct intel_engine_cs *engine)
{
 struct drm_i915_private *i915 = engine->i915;

 if (HAS_L3_DPF(i915))
  engine->irq_keep_mask = GT_RENDER_L3_PARITY_ERROR_INTERRUPT;

 engine->irq_enable_mask = GT_RENDER_USER_INTERRUPT;

 if (INTEL_GEN(i915) >= 7) {
  engine->emit_flush = gen7_render_ring_flush;
  engine->emit_fini_breadcrumb = gen7_rcs_emit_breadcrumb;
 } else if (IS_GEN(i915, 6)) {
  engine->emit_flush = gen6_render_ring_flush;
  engine->emit_fini_breadcrumb = gen6_rcs_emit_breadcrumb;
 } else if (IS_GEN(i915, 5)) {
  engine->emit_flush = gen4_render_ring_flush;
 } else {
  if (INTEL_GEN(i915) < 4)
   engine->emit_flush = gen2_render_ring_flush;
  else
   engine->emit_flush = gen4_render_ring_flush;
  engine->irq_enable_mask = I915_USER_INTERRUPT;
 }

 if (IS_HASWELL(i915))
  engine->emit_bb_start = hsw_emit_bb_start;

 engine->resume = rcs_resume;
}
