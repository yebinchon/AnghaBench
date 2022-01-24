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
struct drm_sched_entity {int dummy; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_ctx_entity {int sequence; int /*<<< orphan*/ * fences; } ;
struct amdgpu_ctx {int /*<<< orphan*/  ring_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long) ; 
 long ERESTARTSYS ; 
 int amdgpu_sched_jobs ; 
 struct dma_fence* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 long FUNC3 (struct dma_fence*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct amdgpu_ctx_entity* FUNC6 (struct drm_sched_entity*) ; 

int FUNC7(struct amdgpu_ctx *ctx,
			       struct drm_sched_entity *entity)
{
	struct amdgpu_ctx_entity *centity = FUNC6(entity);
	struct dma_fence *other;
	unsigned idx;
	long r;

	FUNC4(&ctx->ring_lock);
	idx = centity->sequence & (amdgpu_sched_jobs - 1);
	other = FUNC1(centity->fences[idx]);
	FUNC5(&ctx->ring_lock);

	if (!other)
		return 0;

	r = FUNC3(other, true);
	if (r < 0 && r != -ERESTARTSYS)
		FUNC0("Error (%ld) waiting for fence!\n", r);

	FUNC2(other);
	return r;
}