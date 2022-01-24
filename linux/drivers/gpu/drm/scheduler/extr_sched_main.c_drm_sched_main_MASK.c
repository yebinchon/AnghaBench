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
struct sched_param {int sched_priority; } ;
struct drm_sched_job {int /*<<< orphan*/  cb; struct drm_sched_fence* s_fence; } ;
struct drm_sched_fence {int /*<<< orphan*/  finished; int /*<<< orphan*/  parent; } ;
struct drm_sched_entity {int dummy; } ;
struct drm_gpu_scheduler {int /*<<< orphan*/  job_scheduled; TYPE_1__* ops; int /*<<< orphan*/  hw_rq_count; int /*<<< orphan*/  wake_up_worker; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {struct dma_fence* (* run_job ) (struct drm_sched_job*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int FUNC4 (struct dma_fence*,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct dma_fence*,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_gpu_scheduler*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_gpu_scheduler*) ; 
 struct drm_sched_job* FUNC10 (struct drm_sched_entity*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_sched_fence*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_sched_job*) ; 
 int /*<<< orphan*/  FUNC13 (struct dma_fence*,int /*<<< orphan*/ *) ; 
 struct drm_sched_entity* FUNC14 (struct drm_gpu_scheduler*) ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 struct dma_fence* FUNC17 (struct drm_sched_job*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(void *param)
{
	struct sched_param sparam = {.sched_priority = 1};
	struct drm_gpu_scheduler *sched = (struct drm_gpu_scheduler *)param;
	int r;

	FUNC16(current, SCHED_FIFO, &sparam);

	while (!FUNC15()) {
		struct drm_sched_entity *entity = NULL;
		struct drm_sched_fence *s_fence;
		struct drm_sched_job *sched_job;
		struct dma_fence *fence;

		FUNC18(sched->wake_up_worker,
					 (FUNC9(sched),
					 (!FUNC8(sched) &&
					  (entity = FUNC14(sched))) ||
					 FUNC15()));

		if (!entity)
			continue;

		sched_job = FUNC10(entity);
		if (!sched_job)
			continue;

		s_fence = sched_job->s_fence;

		FUNC3(&sched->hw_rq_count);
		FUNC12(sched_job);

		fence = sched->ops->run_job(sched_job);
		FUNC11(s_fence);

		if (!FUNC1(fence)) {
			s_fence->parent = FUNC5(fence);
			r = FUNC4(fence, &sched_job->cb,
						   drm_sched_process_job);
			if (r == -ENOENT)
				FUNC13(fence, &sched_job->cb);
			else if (r)
				FUNC0("fence add callback failed (%d)\n",
					  r);
			FUNC6(fence);
		} else {

			FUNC7(&s_fence->finished, FUNC2(fence));
			FUNC13(NULL, &sched_job->cb);
		}

		FUNC19(&sched->job_scheduled);
	}
	return 0;
}