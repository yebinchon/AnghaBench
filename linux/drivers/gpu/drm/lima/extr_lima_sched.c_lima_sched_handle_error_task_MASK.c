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
struct lima_sched_task {int /*<<< orphan*/  base; } ;
struct lima_sched_pipe {int num_mmu; int /*<<< orphan*/  base; int /*<<< orphan*/ * current_task; int /*<<< orphan*/ * current_vm; scalar_t__* mmu; scalar_t__ bcast_mmu; int /*<<< orphan*/  (* task_error ) (struct lima_sched_pipe*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct lima_sched_pipe*) ; 

__attribute__((used)) static void FUNC7(struct lima_sched_pipe *pipe,
					 struct lima_sched_task *task)
{
	FUNC3(&pipe->base, &task->base);

	if (task)
		FUNC0(&task->base);

	pipe->task_error(pipe);

	if (pipe->bcast_mmu)
		FUNC4(pipe->bcast_mmu);
	else {
		int i;

		for (i = 0; i < pipe->num_mmu; i++)
			FUNC4(pipe->mmu[i]);
	}

	if (pipe->current_vm)
		FUNC5(pipe->current_vm);

	pipe->current_vm = NULL;
	pipe->current_task = NULL;

	FUNC1(&pipe->base);
	FUNC2(&pipe->base, true);
}