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
struct drm_sched_job {int dummy; } ;
struct drm_sched_entity {TYPE_1__* rq; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_vm {int dummy; } ;
struct amdgpu_ring {int /*<<< orphan*/  adev; } ;
struct TYPE_6__ {TYPE_2__* s_fence; } ;
struct amdgpu_job {int /*<<< orphan*/  sync; TYPE_3__ base; int /*<<< orphan*/  vmid; int /*<<< orphan*/  sched_sync; struct amdgpu_vm* vm; } ;
struct TYPE_5__ {int /*<<< orphan*/  finished; } ;
struct TYPE_4__ {int /*<<< orphan*/  sched; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dma_fence*,int) ; 
 struct dma_fence* FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (struct amdgpu_vm*,struct amdgpu_ring*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct amdgpu_job*) ; 
 scalar_t__ FUNC4 (struct dma_fence*,struct drm_sched_entity*) ; 
 struct amdgpu_job* FUNC5 (struct drm_sched_job*) ; 
 struct amdgpu_ring* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dma_fence *FUNC7(struct drm_sched_job *sched_job,
					       struct drm_sched_entity *s_entity)
{
	struct amdgpu_ring *ring = FUNC6(s_entity->rq->sched);
	struct amdgpu_job *job = FUNC5(sched_job);
	struct amdgpu_vm *vm = job->vm;
	struct dma_fence *fence;
	bool explicit = false;
	int r;

	fence = FUNC2(&job->sync, &explicit);
	if (fence && explicit) {
		if (FUNC4(fence, s_entity)) {
			r = FUNC1(ring->adev, &job->sched_sync,
					      fence, false);
			if (r)
				FUNC0("Error adding fence (%d)\n", r);
		}
	}

	while (fence == NULL && vm && !job->vmid) {
		r = FUNC3(vm, ring, &job->sync,
				     &job->base.s_fence->finished,
				     job);
		if (r)
			FUNC0("Error getting VM ID (%d)\n", r);

		fence = FUNC2(&job->sync, NULL);
	}

	return fence;
}