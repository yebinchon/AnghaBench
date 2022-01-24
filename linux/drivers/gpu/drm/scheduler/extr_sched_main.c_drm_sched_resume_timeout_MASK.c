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
struct drm_gpu_scheduler {int /*<<< orphan*/  job_list_lock; int /*<<< orphan*/  work_tdr; int /*<<< orphan*/  ring_mirror_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  system_wq ; 

void FUNC5(struct drm_gpu_scheduler *sched,
		unsigned long remaining)
{
	unsigned long flags;

	FUNC3(&sched->job_list_lock, flags);

	if (FUNC1(&sched->ring_mirror_list))
		FUNC0(&sched->work_tdr);
	else
		FUNC2(system_wq, &sched->work_tdr, remaining);

	FUNC4(&sched->job_list_lock, flags);
}