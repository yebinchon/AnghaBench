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
struct drm_sched_fence {int /*<<< orphan*/  scheduled; struct drm_gpu_scheduler* sched; } ;
struct drm_sched_entity {scalar_t__ fence_context; struct dma_fence* dependency; int /*<<< orphan*/  cb; TYPE_1__* rq; } ;
struct drm_gpu_scheduler {int dummy; } ;
struct dma_fence {scalar_t__ context; } ;
struct TYPE_2__ {struct drm_gpu_scheduler* sched; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_fence*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dma_fence* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  drm_sched_entity_clear_dep ; 
 int /*<<< orphan*/  drm_sched_entity_wakeup ; 
 struct drm_sched_fence* FUNC3 (struct dma_fence*) ; 

__attribute__((used)) static bool FUNC4(struct drm_sched_entity *entity)
{
	struct drm_gpu_scheduler *sched = entity->rq->sched;
	struct dma_fence *fence = entity->dependency;
	struct drm_sched_fence *s_fence;

	if (fence->context == entity->fence_context ||
	    fence->context == entity->fence_context + 1) {
		/*
		 * Fence is a scheduled/finished fence from a job
		 * which belongs to the same entity, we can ignore
		 * fences from ourself
		 */
		FUNC2(entity->dependency);
		return false;
	}

	s_fence = FUNC3(fence);
	if (s_fence && s_fence->sched == sched) {

		/*
		 * Fence is from the same scheduler, only need to wait for
		 * it to be scheduled
		 */
		fence = FUNC1(&s_fence->scheduled);
		FUNC2(entity->dependency);
		entity->dependency = fence;
		if (!FUNC0(fence, &entity->cb,
					    drm_sched_entity_clear_dep))
			return true;

		/* Ignore it when it is already scheduled */
		FUNC2(fence);
		return false;
	}

	if (!FUNC0(entity->dependency, &entity->cb,
				    drm_sched_entity_wakeup))
		return true;

	FUNC2(entity->dependency);
	return false;
}