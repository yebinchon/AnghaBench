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
typedef  int /*<<< orphan*/  u32 ;
struct intel_timeline {scalar_t__ hwsp_cacheline; } ;
struct i915_request {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct intel_timeline*,struct i915_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_timeline*) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct intel_timeline *tl,
			     struct i915_request *rq,
			     u32 *seqno)
{
	*seqno = FUNC1(tl);

	/* Replace the HWSP on wraparound for HW semaphores */
	if (FUNC2(!*seqno && tl->hwsp_cacheline))
		return FUNC0(tl, rq, seqno);

	return 0;
}