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
struct dma_fence {int dummy; } ;
struct amdgpu_ring {int /*<<< orphan*/  adev; } ;
struct amdgpu_bo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 long ETIMEDOUT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 long FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct amdgpu_bo**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_fence*) ; 
 long FUNC4 (struct dma_fence*,int,long) ; 
 long FUNC5 (struct amdgpu_ring*,int,struct amdgpu_bo*,int /*<<< orphan*/ *) ; 
 long FUNC6 (struct amdgpu_ring*,int,struct amdgpu_bo*,struct dma_fence**) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_ring *ring, long timeout)
{
	struct dma_fence *fence = NULL;
	struct amdgpu_bo *bo = NULL;
	long r;

	r = FUNC0(ring->adev, 128 * 1024, PAGE_SIZE,
				      AMDGPU_GEM_DOMAIN_VRAM,
				      &bo, NULL, NULL);
	if (r)
		return r;

	r = FUNC5(ring, 1, bo, NULL);
	if (r)
		goto error;

	r = FUNC6(ring, 1, bo, &fence);
	if (r)
		goto error;

	r = FUNC4(fence, false, timeout);
	if (r == 0)
		r = -ETIMEDOUT;
	else if (r > 0)
		r = 0;

error:
	FUNC3(fence);
	FUNC2(bo);
	FUNC1(&bo);
	return r;
}