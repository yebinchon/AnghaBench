#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  finish; int /*<<< orphan*/  reset; int /*<<< orphan*/  prepare; } ;
struct intel_engine_cs {int /*<<< orphan*/  emit_bb_start; int /*<<< orphan*/  set_default_submission; int /*<<< orphan*/  emit_fini_breadcrumb; int /*<<< orphan*/  request_alloc; int /*<<< orphan*/ * cops; TYPE_1__ reset; int /*<<< orphan*/  resume; int /*<<< orphan*/  destroy; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  gen5_emit_breadcrumb ; 
 int /*<<< orphan*/  gen6_emit_bb_start ; 
 int /*<<< orphan*/  i830_emit_bb_start ; 
 int /*<<< orphan*/  i915_emit_bb_start ; 
 int /*<<< orphan*/  i965_emit_bb_start ; 
 int /*<<< orphan*/  i9xx_emit_breadcrumb ; 
 int /*<<< orphan*/  i9xx_set_default_submission ; 
 int /*<<< orphan*/  reset_finish ; 
 int /*<<< orphan*/  reset_prepare ; 
 int /*<<< orphan*/  reset_ring ; 
 int /*<<< orphan*/  ring_context_ops ; 
 int /*<<< orphan*/  ring_destroy ; 
 int /*<<< orphan*/  ring_request_alloc ; 
 int /*<<< orphan*/  FUNC5 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  xcs_resume ; 

__attribute__((used)) static void FUNC6(struct intel_engine_cs *engine)
{
	struct drm_i915_private *i915 = engine->i915;

	/* gen8+ are only supported with execlists */
	FUNC0(FUNC1(i915) >= 8);

	FUNC5(engine);

	engine->destroy = ring_destroy;

	engine->resume = xcs_resume;
	engine->reset.prepare = reset_prepare;
	engine->reset.reset = reset_ring;
	engine->reset.finish = reset_finish;

	engine->cops = &ring_context_ops;
	engine->request_alloc = ring_request_alloc;

	/*
	 * Using a global execution timeline; the previous final breadcrumb is
	 * equivalent to our next initial bread so we can elide
	 * engine->emit_init_breadcrumb().
	 */
	engine->emit_fini_breadcrumb = i9xx_emit_breadcrumb;
	if (FUNC2(i915, 5))
		engine->emit_fini_breadcrumb = gen5_emit_breadcrumb;

	engine->set_default_submission = i9xx_set_default_submission;

	if (FUNC1(i915) >= 6)
		engine->emit_bb_start = gen6_emit_bb_start;
	else if (FUNC1(i915) >= 4)
		engine->emit_bb_start = i965_emit_bb_start;
	else if (FUNC3(i915) || FUNC4(i915))
		engine->emit_bb_start = i830_emit_bb_start;
	else
		engine->emit_bb_start = i915_emit_bb_start;
}