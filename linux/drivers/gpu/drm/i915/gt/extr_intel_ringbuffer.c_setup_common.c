
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int finish; int reset; int prepare; } ;
struct intel_engine_cs {int emit_bb_start; int set_default_submission; int emit_fini_breadcrumb; int request_alloc; int * cops; TYPE_1__ reset; int resume; int destroy; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 int GEM_BUG_ON (int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_I830 (struct drm_i915_private*) ;
 scalar_t__ IS_I845G (struct drm_i915_private*) ;
 int gen5_emit_breadcrumb ;
 int gen6_emit_bb_start ;
 int i830_emit_bb_start ;
 int i915_emit_bb_start ;
 int i965_emit_bb_start ;
 int i9xx_emit_breadcrumb ;
 int i9xx_set_default_submission ;
 int reset_finish ;
 int reset_prepare ;
 int reset_ring ;
 int ring_context_ops ;
 int ring_destroy ;
 int ring_request_alloc ;
 int setup_irq (struct intel_engine_cs*) ;
 int xcs_resume ;

__attribute__((used)) static void setup_common(struct intel_engine_cs *engine)
{
 struct drm_i915_private *i915 = engine->i915;


 GEM_BUG_ON(INTEL_GEN(i915) >= 8);

 setup_irq(engine);

 engine->destroy = ring_destroy;

 engine->resume = xcs_resume;
 engine->reset.prepare = reset_prepare;
 engine->reset.reset = reset_ring;
 engine->reset.finish = reset_finish;

 engine->cops = &ring_context_ops;
 engine->request_alloc = ring_request_alloc;






 engine->emit_fini_breadcrumb = i9xx_emit_breadcrumb;
 if (IS_GEN(i915, 5))
  engine->emit_fini_breadcrumb = gen5_emit_breadcrumb;

 engine->set_default_submission = i9xx_set_default_submission;

 if (INTEL_GEN(i915) >= 6)
  engine->emit_bb_start = gen6_emit_bb_start;
 else if (INTEL_GEN(i915) >= 4)
  engine->emit_bb_start = i965_emit_bb_start;
 else if (IS_I830(i915) || IS_I845G(i915))
  engine->emit_bb_start = i830_emit_bb_start;
 else
  engine->emit_bb_start = i915_emit_bb_start;
}
