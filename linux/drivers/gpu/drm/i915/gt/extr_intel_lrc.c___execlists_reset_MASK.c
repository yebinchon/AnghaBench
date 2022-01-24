#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct intel_engine_execlists {int dummy; } ;
struct intel_engine_cs {int /*<<< orphan*/  name; scalar_t__ context_size; scalar_t__ pinned_default_state; struct intel_engine_execlists execlists; } ;
struct intel_context {TYPE_1__* ring; int /*<<< orphan*/ * lrc_reg_state; int /*<<< orphan*/  state; int /*<<< orphan*/  active; } ;
struct i915_request {int /*<<< orphan*/  head; struct intel_context* hw_context; } ;
struct TYPE_4__ {int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int LRC_STATE_PN ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct intel_context*,struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_engine_cs*) ; 
 struct i915_request* FUNC5 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_engine_execlists* const) ; 
 struct i915_request* FUNC7 (struct intel_engine_execlists* const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct intel_context*,struct intel_engine_cs*,TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_engine_cs*) ; 

__attribute__((used)) static void FUNC17(struct intel_engine_cs *engine, bool stalled)
{
	struct intel_engine_execlists * const execlists = &engine->execlists;
	struct intel_context *ce;
	struct i915_request *rq;
	u32 *regs;

	FUNC15(engine); /* drain preemption events */

	/* Following the reset, we need to reload the CSB read/write pointers */
	FUNC16(engine);

	/*
	 * Save the currently executing context, even if we completed
	 * its request, it was still running at the time of the
	 * reset and will have been clobbered.
	 */
	rq = FUNC7(execlists);
	if (!rq)
		goto unwind;

	ce = rq->hw_context;
	FUNC0(FUNC9(&ce->active));
	FUNC0(!FUNC11(ce->state));
	rq = FUNC5(rq);
	if (!rq) {
		ce->ring->head = ce->ring->tail;
		goto out_replay;
	}

	ce->ring->head = FUNC13(ce->ring, rq->head);

	/*
	 * If this request hasn't started yet, e.g. it is waiting on a
	 * semaphore, we need to avoid skipping the request or else we
	 * break the signaling chain. However, if the context is corrupt
	 * the request will not restart and we will be stuck with a wedged
	 * device. It is quite often the case that if we issue a reset
	 * while the GPU is loading the context image, that the context
	 * image becomes corrupt.
	 *
	 * Otherwise, if we have not started yet, the request should replay
	 * perfectly and we do not need to flag the result as being erroneous.
	 */
	if (!FUNC10(rq))
		goto out_replay;

	/*
	 * If the request was innocent, we leave the request in the ELSP
	 * and will try to replay it on restarting. The context image may
	 * have been corrupted by the reset, in which case we may have
	 * to service a new GPU hang, but more likely we can continue on
	 * without impact.
	 *
	 * If the request was guilty, we presume the context is corrupt
	 * and have to at least restore the RING register in the context
	 * image back to the expected values to skip over the guilty request.
	 */
	FUNC3(rq, stalled);
	if (!stalled)
		goto out_replay;

	/*
	 * We want a simple context + ring to execute the breadcrumb update.
	 * We cannot rely on the context being intact across the GPU hang,
	 * so clear it and rebuild just what we need for the breadcrumb.
	 * All pending requests for this context will be zapped, and any
	 * future request will be after userspace has had the opportunity
	 * to recreate its own state.
	 */
	regs = ce->lrc_reg_state;
	if (engine->pinned_default_state) {
		FUNC14(regs, /* skip restoring the vanilla PPHWSP */
		       engine->pinned_default_state + LRC_STATE_PN * PAGE_SIZE,
		       engine->context_size - PAGE_SIZE);
	}
	FUNC8(regs, ce, engine, ce->ring);

out_replay:
	FUNC1("%s replay {head:%04x, tail:%04x\n",
		  engine->name, ce->ring->head, ce->ring->tail);
	FUNC12(ce->ring);
	FUNC2(ce, engine);

unwind:
	/* Push back any incomplete requests for replay after the reset. */
	FUNC6(execlists);
	FUNC4(engine);
}