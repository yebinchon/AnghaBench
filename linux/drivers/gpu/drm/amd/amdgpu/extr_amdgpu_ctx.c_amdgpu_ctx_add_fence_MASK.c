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
typedef  int uint64_t ;
struct drm_sched_entity {int dummy; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_ctx_entity {int sequence; struct dma_fence** fences; } ;
struct amdgpu_ctx {int /*<<< orphan*/  ring_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int amdgpu_sched_jobs ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct amdgpu_ctx_entity* FUNC6 (struct drm_sched_entity*) ; 

void FUNC7(struct amdgpu_ctx *ctx,
			  struct drm_sched_entity *entity,
			  struct dma_fence *fence, uint64_t* handle)
{
	struct amdgpu_ctx_entity *centity = FUNC6(entity);
	uint64_t seq = centity->sequence;
	struct dma_fence *other = NULL;
	unsigned idx = 0;

	idx = seq & (amdgpu_sched_jobs - 1);
	other = centity->fences[idx];
	if (other)
		FUNC0(!FUNC2(other));

	FUNC1(fence);

	FUNC4(&ctx->ring_lock);
	centity->fences[idx] = fence;
	centity->sequence++;
	FUNC5(&ctx->ring_lock);

	FUNC3(other);
	if (handle)
		*handle = seq;
}