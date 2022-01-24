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
struct lima_sched_task {int /*<<< orphan*/  fence; } ;
struct lima_sched_pipe {int /*<<< orphan*/  (* task_fini ) (struct lima_sched_pipe*) ;struct lima_sched_task* current_task; int /*<<< orphan*/  error_work; scalar_t__ error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lima_sched_pipe*) ; 

void FUNC3(struct lima_sched_pipe *pipe)
{
	if (pipe->error)
		FUNC1(&pipe->error_work);
	else {
		struct lima_sched_task *task = pipe->current_task;

		pipe->task_fini(pipe);
		FUNC0(task->fence);
	}
}