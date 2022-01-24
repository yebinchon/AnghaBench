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
struct rxe_task {int destroyed; scalar_t__ state; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 scalar_t__ TASK_STATE_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct rxe_task *task)
{
	unsigned long flags;
	bool idle;

	/*
	 * Mark the task, then wait for it to finish. It might be
	 * running in a non-tasklet (direct call) context.
	 */
	task->destroyed = true;

	do {
		FUNC0(&task->state_lock, flags);
		idle = (task->state == TASK_STATE_START);
		FUNC1(&task->state_lock, flags);
	} while (!idle);

	FUNC2(&task->tasklet);
}