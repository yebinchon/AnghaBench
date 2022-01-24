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
struct drm_sched_job {int /*<<< orphan*/  finish_cb; struct drm_sched_fence* s_fence; } ;
struct drm_sched_fence {int /*<<< orphan*/  finished; } ;
struct drm_sched_entity {int /*<<< orphan*/  last_scheduled; int /*<<< orphan*/  job_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENOENT ; 
 int /*<<< orphan*/  ESRCH ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_sched_fence*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct drm_sched_job* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct drm_sched_entity *entity)
{
	struct drm_sched_job *job;
	int r;

	while ((job = FUNC6(FUNC5(&entity->job_queue)))) {
		struct drm_sched_fence *s_fence = job->s_fence;

		FUNC4(s_fence);
		FUNC2(&s_fence->finished, -ESRCH);

		/*
		 * When pipe is hanged by older entity, new entity might
		 * not even have chance to submit it's first job to HW
		 * and so entity->last_scheduled will remain NULL
		 */
		if (!entity->last_scheduled) {
			FUNC3(NULL, &job->finish_cb);
			continue;
		}

		r = FUNC1(entity->last_scheduled,
					   &job->finish_cb,
					   drm_sched_entity_kill_jobs_cb);
		if (r == -ENOENT)
			FUNC3(NULL, &job->finish_cb);
		else if (r)
			FUNC0("fence add callback failed (%d)\n", r);
	}
}