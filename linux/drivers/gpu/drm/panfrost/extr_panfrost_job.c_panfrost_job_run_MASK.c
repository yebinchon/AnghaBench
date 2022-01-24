#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_3__* s_fence; } ;
struct panfrost_job {scalar_t__ done_fence; TYPE_1__ base; struct panfrost_device* pfdev; } ;
struct panfrost_device {struct panfrost_job** jobs; } ;
struct drm_sched_job {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  error; } ;
struct TYPE_6__ {TYPE_2__ finished; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dma_fence*) ; 
 scalar_t__ FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct dma_fence* FUNC3 (struct panfrost_device*,int) ; 
 int FUNC4 (struct panfrost_job*) ; 
 int /*<<< orphan*/  FUNC5 (struct panfrost_job*,int) ; 
 struct panfrost_job* FUNC6 (struct drm_sched_job*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dma_fence *FUNC8(struct drm_sched_job *sched_job)
{
	struct panfrost_job *job = FUNC6(sched_job);
	struct panfrost_device *pfdev = job->pfdev;
	int slot = FUNC4(job);
	struct dma_fence *fence = NULL;

	if (FUNC7(job->base.s_fence->finished.error))
		return NULL;

	pfdev->jobs[slot] = job;

	fence = FUNC3(pfdev, slot);
	if (FUNC0(fence))
		return NULL;

	if (job->done_fence)
		FUNC2(job->done_fence);
	job->done_fence = FUNC1(fence);

	FUNC5(job, slot);

	return fence;
}