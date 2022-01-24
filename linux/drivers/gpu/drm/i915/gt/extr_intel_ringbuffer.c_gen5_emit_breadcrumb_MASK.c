#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {scalar_t__ seqno; } ;
struct i915_request {int /*<<< orphan*/  tail; int /*<<< orphan*/  ring; TYPE_4__ fence; TYPE_3__* timeline; TYPE_2__* engine; } ;
struct TYPE_7__ {scalar_t__ hwsp_ggtt; int /*<<< orphan*/  hwsp_offset; } ;
struct TYPE_5__ {scalar_t__ vma; } ;
struct TYPE_6__ {TYPE_1__ status_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int GEN5_WA_STORES ; 
 scalar_t__ I915_GEM_HWS_SEQNO_ADDR ; 
 int /*<<< orphan*/  MI_FLUSH ; 
 int /*<<< orphan*/  MI_STORE_DWORD_INDEX ; 
 scalar_t__ MI_USER_INTERRUPT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 *FUNC5(struct i915_request *rq, u32 *cs)
{
	int i;

	FUNC1(rq->timeline->hwsp_ggtt != rq->engine->status_page.vma);
	FUNC1(FUNC4(rq->timeline->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);

	*cs++ = MI_FLUSH;

	FUNC0(GEN5_WA_STORES < 1);
	for (i = 0; i < GEN5_WA_STORES; i++) {
		*cs++ = MI_STORE_DWORD_INDEX;
		*cs++ = I915_GEM_HWS_SEQNO_ADDR;
		*cs++ = rq->fence.seqno;
	}

	*cs++ = MI_USER_INTERRUPT;

	rq->tail = FUNC3(rq, cs);
	FUNC2(rq->ring, rq->tail);

	return cs;
}