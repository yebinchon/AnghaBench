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
struct lima_vm {int dummy; } ;
struct lima_sched_task {int num_bos; int /*<<< orphan*/  fence; struct lima_bo** bos; struct lima_vm* vm; } ;
struct lima_sched_pipe {int /*<<< orphan*/  task_slab; } ;
struct lima_bo {int dummy; } ;
struct drm_sched_job {int /*<<< orphan*/  sched; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct lima_sched_task*) ; 
 int /*<<< orphan*/  FUNC2 (struct lima_sched_task*) ; 
 int /*<<< orphan*/  FUNC3 (struct lima_vm*,struct lima_bo*) ; 
 struct lima_sched_pipe* FUNC4 (int /*<<< orphan*/ ) ; 
 struct lima_sched_task* FUNC5 (struct drm_sched_job*) ; 

__attribute__((used)) static void FUNC6(struct drm_sched_job *job)
{
	struct lima_sched_task *task = FUNC5(job);
	struct lima_sched_pipe *pipe = FUNC4(job->sched);
	struct lima_vm *vm = task->vm;
	struct lima_bo **bos = task->bos;
	int i;

	FUNC0(task->fence);

	for (i = 0; i < task->num_bos; i++)
		FUNC3(vm, bos[i]);

	FUNC2(task);
	FUNC1(pipe->task_slab, task);
}