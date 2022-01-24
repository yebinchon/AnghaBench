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
struct intel_timeline {int /*<<< orphan*/  link; int /*<<< orphan*/  active_count; int /*<<< orphan*/  pin_count; int /*<<< orphan*/  mutex; TYPE_1__* gt; } ;
struct intel_gt_timelines {int /*<<< orphan*/  lock; int /*<<< orphan*/  active_list; } ;
struct TYPE_2__ {struct intel_gt_timelines timelines; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct intel_timeline *tl)
{
	struct intel_gt_timelines *timelines = &tl->gt->timelines;
	unsigned long flags;

	FUNC3(&tl->mutex);

	FUNC0(!FUNC1(&tl->pin_count));
	if (tl->active_count++)
		return;
	FUNC0(!tl->active_count); /* overflow? */

	FUNC4(&timelines->lock, flags);
	FUNC2(&tl->link, &timelines->active_list);
	FUNC5(&timelines->lock, flags);
}