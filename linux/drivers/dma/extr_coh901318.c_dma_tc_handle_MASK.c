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
struct coh901318_chan {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  lock; scalar_t__ busy; int /*<<< orphan*/  nbr_active_done; int /*<<< orphan*/  active; int /*<<< orphan*/  allocated; } ;
struct TYPE_2__ {scalar_t__ priority_high; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct coh901318_chan*) ; 
 int /*<<< orphan*/ * FUNC2 (struct coh901318_chan*) ; 
 TYPE_1__* FUNC3 (struct coh901318_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct coh901318_chan *cohc)
{
	/*
	 * If the channel is not allocated, then we shouldn't have
	 * any TC interrupts on it.
	 */
	if (!cohc->allocated) {
		FUNC4(FUNC1(cohc), "spurious interrupt from "
			"unallocated channel\n");
		return;
	}

	FUNC6(&cohc->lock);

	/*
	 * When we reach this point, at least one queue item
	 * should have been moved over from cohc->queue to
	 * cohc->active and run to completion, that is why we're
	 * getting a terminal count interrupt is it not?
	 * If you get this BUG() the most probable cause is that
	 * the individual nodes in the lli chain have IRQ enabled,
	 * so check your platform config for lli chain ctrl.
	 */
	FUNC0(FUNC5(&cohc->active));

	cohc->nbr_active_done++;

	/*
	 * This attempt to take a job from cohc->queue, put it
	 * into cohc->active and start it.
	 */
	if (FUNC2(cohc) == NULL)
		cohc->busy = 0;

	FUNC7(&cohc->lock);

	/*
	 * This tasklet will remove items from cohc->active
	 * and thus terminates them.
	 */
	if (FUNC3(cohc)->priority_high)
		FUNC8(&cohc->tasklet);
	else
		FUNC9(&cohc->tasklet);
}