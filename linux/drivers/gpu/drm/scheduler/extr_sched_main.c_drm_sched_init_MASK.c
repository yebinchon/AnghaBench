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
struct drm_sched_backend_ops {int dummy; } ;
struct drm_gpu_scheduler {unsigned int hw_submission_limit; char const* name; long timeout; unsigned int hang_limit; int ready; int /*<<< orphan*/ * thread; int /*<<< orphan*/  job_id_count; int /*<<< orphan*/  num_jobs; int /*<<< orphan*/  work_tdr; int /*<<< orphan*/  hw_rq_count; int /*<<< orphan*/  job_list_lock; int /*<<< orphan*/  ring_mirror_list; int /*<<< orphan*/  job_scheduled; int /*<<< orphan*/  wake_up_worker; int /*<<< orphan*/ * sched_rq; struct drm_sched_backend_ops const* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int DRM_SCHED_PRIORITY_MAX ; 
 int DRM_SCHED_PRIORITY_MIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_sched_job_timedout ; 
 int /*<<< orphan*/  drm_sched_main ; 
 int /*<<< orphan*/  FUNC7 (struct drm_gpu_scheduler*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,struct drm_gpu_scheduler*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct drm_gpu_scheduler *sched,
		   const struct drm_sched_backend_ops *ops,
		   unsigned hw_submission,
		   unsigned hang_limit,
		   long timeout,
		   const char *name)
{
	int i, ret;
	sched->ops = ops;
	sched->hw_submission_limit = hw_submission;
	sched->name = name;
	sched->timeout = timeout;
	sched->hang_limit = hang_limit;
	for (i = DRM_SCHED_PRIORITY_MIN; i < DRM_SCHED_PRIORITY_MAX; i++)
		FUNC7(sched, &sched->sched_rq[i]);

	FUNC8(&sched->wake_up_worker);
	FUNC8(&sched->job_scheduled);
	FUNC2(&sched->ring_mirror_list);
	FUNC10(&sched->job_list_lock);
	FUNC6(&sched->hw_rq_count, 0);
	FUNC1(&sched->work_tdr, drm_sched_job_timedout);
	FUNC6(&sched->num_jobs, 0);
	FUNC5(&sched->job_id_count, 0);

	/* Each scheduler will run on a seperate kernel thread */
	sched->thread = FUNC9(drm_sched_main, sched, sched->name);
	if (FUNC3(sched->thread)) {
		ret = FUNC4(sched->thread);
		sched->thread = NULL;
		FUNC0("Failed to create scheduler for %s.\n", name);
		return ret;
	}

	sched->ready = true;
	return 0;
}