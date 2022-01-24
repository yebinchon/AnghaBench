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
struct dma_fence {int dummy; } ;
struct amdgpu_ring {int /*<<< orphan*/  sched; } ;
struct TYPE_2__ {int /*<<< orphan*/ * sched; } ;
struct amdgpu_job {int /*<<< orphan*/  fence; int /*<<< orphan*/  ibs; int /*<<< orphan*/  num_ibs; TYPE_1__ base; } ;

/* Variables and functions */
 int FUNC0 (struct amdgpu_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_job*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 

int FUNC3(struct amdgpu_job *job, struct amdgpu_ring *ring,
			     struct dma_fence **fence)
{
	int r;

	job->base.sched = &ring->sched;
	r = FUNC0(ring, job->num_ibs, job->ibs, NULL, fence);
	job->fence = FUNC2(*fence);
	if (r)
		return r;

	FUNC1(job);
	return 0;
}