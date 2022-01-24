#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct drm_sched_entity {TYPE_2__* rq; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_7__ {int s_priority; TYPE_1__* s_fence; } ;
struct amdgpu_job {TYPE_3__ base; void* owner; } ;
typedef  enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;
struct TYPE_6__ {int /*<<< orphan*/  sched; } ;
struct TYPE_5__ {int /*<<< orphan*/  finished; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_job*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,int) ; 
 struct dma_fence* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct drm_sched_entity*) ; 
 int FUNC4 (TYPE_3__*,struct drm_sched_entity*,void*) ; 
 struct amdgpu_ring* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct amdgpu_job *job, struct drm_sched_entity *entity,
		      void *owner, struct dma_fence **f)
{
	enum drm_sched_priority priority;
	struct amdgpu_ring *ring;
	int r;

	if (!f)
		return -EINVAL;

	r = FUNC4(&job->base, entity, owner);
	if (r)
		return r;

	job->owner = owner;
	*f = FUNC2(&job->base.s_fence->finished);
	FUNC0(job);
	priority = job->base.s_priority;
	FUNC3(&job->base, entity);

	ring = FUNC5(entity->rq->sched);
	FUNC1(ring, priority);

	return 0;
}