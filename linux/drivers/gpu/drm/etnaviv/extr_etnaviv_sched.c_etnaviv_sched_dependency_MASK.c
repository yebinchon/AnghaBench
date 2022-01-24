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
struct etnaviv_gem_submit_bo {int nr_shared; struct dma_fence** shared; struct dma_fence* excl; } ;
struct etnaviv_gem_submit {int nr_bos; struct etnaviv_gem_submit_bo* bos; struct dma_fence* in_fence; } ;
struct drm_sched_job {int dummy; } ;
struct drm_sched_entity {int dummy; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence**) ; 
 struct etnaviv_gem_submit* FUNC3 (struct drm_sched_job*) ; 
 scalar_t__ FUNC4 (struct dma_fence*) ; 

__attribute__((used)) static struct dma_fence *
FUNC5(struct drm_sched_job *sched_job,
			 struct drm_sched_entity *entity)
{
	struct etnaviv_gem_submit *submit = FUNC3(sched_job);
	struct dma_fence *fence;
	int i;

	if (FUNC4(submit->in_fence)) {
		fence = submit->in_fence;
		submit->in_fence = NULL;

		if (!FUNC0(fence))
			return fence;

		FUNC1(fence);
	}

	for (i = 0; i < submit->nr_bos; i++) {
		struct etnaviv_gem_submit_bo *bo = &submit->bos[i];
		int j;

		if (bo->excl) {
			fence = bo->excl;
			bo->excl = NULL;

			if (!FUNC0(fence))
				return fence;

			FUNC1(fence);
		}

		for (j = 0; j < bo->nr_shared; j++) {
			if (!bo->shared[j])
				continue;

			fence = bo->shared[j];
			bo->shared[j] = NULL;

			if (!FUNC0(fence))
				return fence;

			FUNC1(fence);
		}
		FUNC2(bo->shared);
		bo->nr_shared = 0;
		bo->shared = NULL;
	}

	return NULL;
}