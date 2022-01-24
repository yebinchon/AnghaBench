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
struct intel_timeline {int /*<<< orphan*/  sync; int /*<<< orphan*/  link; scalar_t__ active_count; int /*<<< orphan*/  mutex; TYPE_1__* gt; } ;
struct intel_gt_timelines {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct intel_gt_timelines timelines; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct intel_timeline *tl)
{
	struct intel_gt_timelines *timelines = &tl->gt->timelines;
	unsigned long flags;

	FUNC3(&tl->mutex);

	FUNC0(!tl->active_count);
	if (--tl->active_count)
		return;

	FUNC4(&timelines->lock, flags);
	FUNC2(&tl->link);
	FUNC5(&timelines->lock, flags);

	/*
	 * Since this timeline is idle, all bariers upon which we were waiting
	 * must also be complete and so we can discard the last used barriers
	 * without loss of information.
	 */
	FUNC1(&tl->sync);
}