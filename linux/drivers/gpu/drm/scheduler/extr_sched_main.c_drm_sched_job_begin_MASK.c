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
struct drm_sched_job {int /*<<< orphan*/  node; struct drm_gpu_scheduler* sched; } ;
struct drm_gpu_scheduler {int /*<<< orphan*/  job_list_lock; int /*<<< orphan*/  ring_mirror_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_gpu_scheduler*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct drm_sched_job *s_job)
{
	struct drm_gpu_scheduler *sched = s_job->sched;
	unsigned long flags;

	FUNC2(&sched->job_list_lock, flags);
	FUNC1(&s_job->node, &sched->ring_mirror_list);
	FUNC0(sched);
	FUNC3(&sched->job_list_lock, flags);
}