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
struct drm_sched_job {int /*<<< orphan*/  sched; } ;
struct dma_fence {scalar_t__ error; } ;
struct amdgpu_ring {TYPE_3__* adev; } ;
struct TYPE_5__ {TYPE_1__* s_fence; } ;
struct amdgpu_job {scalar_t__ vram_lost_counter; int /*<<< orphan*/  fence; int /*<<< orphan*/  ibs; int /*<<< orphan*/  num_ibs; int /*<<< orphan*/  sync; TYPE_2__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  vram_lost_counter; } ;
struct TYPE_4__ {struct dma_fence finished; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  ECANCELED ; 
 struct dma_fence* FUNC3 (int) ; 
 int FUNC4 (struct amdgpu_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct amdgpu_job*,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_job*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dma_fence*,int /*<<< orphan*/ ) ; 
 struct amdgpu_job* FUNC11 (struct drm_sched_job*) ; 
 struct amdgpu_ring* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct amdgpu_job*) ; 

__attribute__((used)) static struct dma_fence *FUNC14(struct drm_sched_job *sched_job)
{
	struct amdgpu_ring *ring = FUNC12(sched_job->sched);
	struct dma_fence *fence = NULL, *finished;
	struct amdgpu_job *job;
	int r = 0;

	job = FUNC11(sched_job);
	finished = &job->base.s_fence->finished;

	FUNC0(FUNC6(&job->sync, NULL));

	FUNC13(job);

	if (job->vram_lost_counter != FUNC7(&ring->adev->vram_lost_counter))
		FUNC10(finished, -ECANCELED);/* skip IB as well if VRAM lost */

	if (finished->error < 0) {
		FUNC2("Skip scheduling IBs!\n");
	} else {
		r = FUNC4(ring, job->num_ibs, job->ibs, job,
				       &fence);
		if (r)
			FUNC1("Error scheduling IBs (%d)\n", r);
	}
	/* if gpu reset, hw fence will be replaced here */
	FUNC9(job->fence);
	job->fence = FUNC8(fence);

	FUNC5(job);

	fence = r ? FUNC3(r) : fence;
	return fence;
}