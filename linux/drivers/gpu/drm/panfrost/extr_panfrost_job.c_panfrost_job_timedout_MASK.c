#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct panfrost_job {int /*<<< orphan*/  done_fence; struct panfrost_device* pfdev; } ;
struct panfrost_device {int /*<<< orphan*/  reset_lock; TYPE_2__* js; int /*<<< orphan*/ ** jobs; int /*<<< orphan*/  dev; } ;
struct drm_sched_job {int dummy; } ;
struct drm_gpu_scheduler {int /*<<< orphan*/  work_tdr; } ;
struct TYPE_4__ {TYPE_1__* queue; int /*<<< orphan*/  job_lock; } ;
struct TYPE_3__ {struct drm_gpu_scheduler sched; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int NUM_JOB_SLOTS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_sched_job*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_sched_job*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_gpu_scheduler*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_gpu_scheduler*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_gpu_scheduler*,struct drm_sched_job*) ; 
 int /*<<< orphan*/  FUNC11 (struct panfrost_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct panfrost_device*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct panfrost_device*) ; 
 int FUNC16 (struct panfrost_job*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 struct panfrost_job* FUNC20 (struct drm_sched_job*) ; 

__attribute__((used)) static void FUNC21(struct drm_sched_job *sched_job)
{
	struct panfrost_job *job = FUNC20(sched_job);
	struct panfrost_device *pfdev = job->pfdev;
	int js = FUNC16(job);
	unsigned long flags;
	int i;

	/*
	 * If the GPU managed to complete this jobs fence, the timeout is
	 * spurious. Bail out.
	 */
	if (FUNC6(job->done_fence))
		return;

	FUNC5(pfdev->dev, "gpu sched timeout, js=%d, config=0x%x, status=0x%x, head=0x%x, tail=0x%x, sched_job=%p",
		js,
		FUNC11(pfdev, FUNC0(js)),
		FUNC11(pfdev, FUNC2(js)),
		FUNC11(pfdev, FUNC1(js)),
		FUNC11(pfdev, FUNC3(js)),
		sched_job);

	if (!FUNC12(&pfdev->reset_lock))
		return;

	for (i = 0; i < NUM_JOB_SLOTS; i++) {
		struct drm_gpu_scheduler *sched = &pfdev->js->queue[i].sched;

		FUNC10(sched, sched_job);
		if (js != i)
			/* Ensure any timeouts on other slots have finished */
			FUNC4(&sched->work_tdr);
	}

	FUNC7(sched_job);

	FUNC18(&pfdev->js->job_lock, flags);
	for (i = 0; i < NUM_JOB_SLOTS; i++) {
		if (pfdev->jobs[i]) {
			FUNC17(pfdev->dev);
			pfdev->jobs[i] = NULL;
		}
	}
	FUNC19(&pfdev->js->job_lock, flags);

	/* panfrost_core_dump(pfdev); */

	FUNC14(pfdev, js);
	FUNC15(pfdev);

	for (i = 0; i < NUM_JOB_SLOTS; i++)
		FUNC8(&pfdev->js->queue[i].sched);

	/* restart scheduler after GPU is usable again */
	for (i = 0; i < NUM_JOB_SLOTS; i++)
		FUNC9(&pfdev->js->queue[i].sched, true);

	FUNC13(&pfdev->reset_lock);
}