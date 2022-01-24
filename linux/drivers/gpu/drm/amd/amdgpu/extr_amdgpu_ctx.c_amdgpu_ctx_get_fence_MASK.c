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
typedef  unsigned long long uint64_t ;
struct drm_sched_entity {int dummy; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_ctx_entity {unsigned long long sequence; int /*<<< orphan*/ * fences; } ;
struct amdgpu_ctx {int /*<<< orphan*/  ring_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct dma_fence* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long long amdgpu_sched_jobs ; 
 struct dma_fence* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct amdgpu_ctx_entity* FUNC4 (struct drm_sched_entity*) ; 

struct dma_fence *FUNC5(struct amdgpu_ctx *ctx,
				       struct drm_sched_entity *entity,
				       uint64_t seq)
{
	struct amdgpu_ctx_entity *centity = FUNC4(entity);
	struct dma_fence *fence;

	FUNC2(&ctx->ring_lock);

	if (seq == ~0ull)
		seq = centity->sequence - 1;

	if (seq >= centity->sequence) {
		FUNC3(&ctx->ring_lock);
		return FUNC0(-EINVAL);
	}


	if (seq + amdgpu_sched_jobs < centity->sequence) {
		FUNC3(&ctx->ring_lock);
		return NULL;
	}

	fence = FUNC1(centity->fences[seq & (amdgpu_sched_jobs - 1)]);
	FUNC3(&ctx->ring_lock);

	return fence;
}