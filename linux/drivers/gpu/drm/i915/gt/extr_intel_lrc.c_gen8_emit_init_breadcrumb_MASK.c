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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int seqno; } ;
struct i915_request {int /*<<< orphan*/  infix; TYPE_1__ fence; TYPE_2__* timeline; } ;
struct TYPE_4__ {int /*<<< orphan*/  hwsp_offset; int /*<<< orphan*/  has_initial_breadcrumb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MI_ARB_CHECK ; 
 int /*<<< orphan*/  MI_NOOP ; 
 int MI_STORE_DWORD_IMM_GEN4 ; 
 int MI_USE_GGTT ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct i915_request*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_request*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i915_request *rq)
{
	u32 *cs;

	FUNC0(!rq->timeline->has_initial_breadcrumb);

	cs = FUNC4(rq, 6);
	if (FUNC1(cs))
		return FUNC2(cs);

	/*
	 * Check if we have been preempted before we even get started.
	 *
	 * After this point i915_request_started() reports true, even if
	 * we get preempted and so are no longer running.
	 */
	*cs++ = MI_ARB_CHECK;
	*cs++ = MI_NOOP;

	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
	*cs++ = rq->timeline->hwsp_offset;
	*cs++ = 0;
	*cs++ = rq->fence.seqno - 1;

	FUNC3(rq, cs);

	/* Record the updated position of the request's payload */
	rq->infix = FUNC5(rq, cs);

	return 0;
}