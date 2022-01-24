#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct intel_context {int /*<<< orphan*/  lrc_desc; int /*<<< orphan*/ * lrc_reg_state; } ;
struct i915_request {int /*<<< orphan*/  tail; int /*<<< orphan*/  ring; struct intel_context* hw_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTX_DESC_FORCE_RESTORE ; 
 int CTX_RING_TAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static u64 FUNC2(const struct i915_request *rq)
{
	struct intel_context *ce = rq->hw_context;
	u64 desc;

	ce->lrc_reg_state[CTX_RING_TAIL + 1] =
		FUNC0(rq->ring, rq->tail);

	/*
	 * Make sure the context image is complete before we submit it to HW.
	 *
	 * Ostensibly, writes (including the WCB) should be flushed prior to
	 * an uncached write such as our mmio register access, the empirical
	 * evidence (esp. on Braswell) suggests that the WC write into memory
	 * may not be visible to the HW prior to the completion of the UC
	 * register write and that we may begin execution from the context
	 * before its image is complete leading to invalid PD chasing.
	 *
	 * Furthermore, Braswell, at least, wants a full mb to be sure that
	 * the writes are coherent in memory (visible to the GPU) prior to
	 * execution, and not just visible to other CPUs (as is the result of
	 * wmb).
	 */
	FUNC1();

	desc = ce->lrc_desc;
	ce->lrc_desc &= ~CTX_DESC_FORCE_RESTORE;

	return desc;
}