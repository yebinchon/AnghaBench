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
struct drm_i915_error_state_buf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  priority; } ;
struct drm_i915_error_request {int /*<<< orphan*/  tail; int /*<<< orphan*/  head; int /*<<< orphan*/  start; scalar_t__ jiffies; TYPE_1__ sched_attr; int /*<<< orphan*/  flags; int /*<<< orphan*/  seqno; int /*<<< orphan*/  context; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT ; 
 int /*<<< orphan*/  DMA_FENCE_FLAG_SIGNALED_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_error_state_buf*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_error_state_buf *m,
				const char *prefix,
				const struct drm_i915_error_request *erq,
				const unsigned long epoch)
{
	if (!erq->seqno)
		return;

	FUNC0(m, "%s pid %d, seqno %8x:%08x%s%s, prio %d, emitted %dms, start %08x, head %08x, tail %08x\n",
		   prefix, erq->pid, erq->context, erq->seqno,
		   FUNC2(DMA_FENCE_FLAG_SIGNALED_BIT,
			    &erq->flags) ? "!" : "",
		   FUNC2(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
			    &erq->flags) ? "+" : "",
		   erq->sched_attr.priority,
		   FUNC1(erq->jiffies - epoch),
		   erq->start, erq->head, erq->tail);
}