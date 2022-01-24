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
struct lima_sched_task {int dummy; } ;
struct lima_sched_pipe {int dummy; } ;
struct drm_sched_job {int /*<<< orphan*/  sched; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct lima_sched_pipe*,struct lima_sched_task*) ; 
 struct lima_sched_pipe* FUNC2 (int /*<<< orphan*/ ) ; 
 struct lima_sched_task* FUNC3 (struct drm_sched_job*) ; 

__attribute__((used)) static void FUNC4(struct drm_sched_job *job)
{
	struct lima_sched_pipe *pipe = FUNC2(job->sched);
	struct lima_sched_task *task = FUNC3(job);

	FUNC0("lima job timeout\n");

	FUNC1(pipe, task);
}