#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_context {int /*<<< orphan*/  signal_link; int /*<<< orphan*/  signals; } ;
struct intel_breadcrumbs {int /*<<< orphan*/  irq_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct i915_request {TYPE_1__ fence; int /*<<< orphan*/  signal_link; struct intel_context* hw_context; int /*<<< orphan*/  lock; TYPE_2__* engine; } ;
struct TYPE_4__ {struct intel_breadcrumbs breadcrumbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_FENCE_FLAG_SIGNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct i915_request *rq)
{
	struct intel_breadcrumbs *b = &rq->engine->breadcrumbs;

	FUNC4(&rq->lock);
	FUNC5();

	/*
	 * We must wait for b->irq_lock so that we know the interrupt handler
	 * has released its reference to the intel_context and has completed
	 * the DMA_FENCE_FLAG_SIGNALED_BIT/I915_FENCE_FLAG_SIGNAL dance (if
	 * required).
	 */
	FUNC6(&b->irq_lock);
	if (FUNC8(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags)) {
		struct intel_context *ce = rq->hw_context;

		FUNC1(&rq->signal_link);
		if (FUNC3(&ce->signals))
			FUNC2(&ce->signal_link);

		FUNC0(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
	}
	FUNC7(&b->irq_lock);
}