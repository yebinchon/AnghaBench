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
typedef  int uint32_t ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct amdgpu_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct amdgpu_bo**,int /*<<< orphan*/ *,void**) ; 
 int FUNC1 (struct amdgpu_ring*,struct amdgpu_bo*,int,struct dma_fence**) ; 
 int FUNC2 (int) ; 

int FUNC3(struct amdgpu_ring *ring, uint32_t handle,
			      struct dma_fence **fence)
{
	struct amdgpu_device *adev = ring->adev;
	struct amdgpu_bo *bo = NULL;
	uint32_t *msg;
	int r, i;

	r = FUNC0(adev, 1024, PAGE_SIZE,
				      AMDGPU_GEM_DOMAIN_VRAM,
				      &bo, NULL, (void **)&msg);
	if (r)
		return r;

	/* stitch together an UVD create msg */
	msg[0] = FUNC2(0x00000de4);
	msg[1] = FUNC2(0x00000000);
	msg[2] = FUNC2(handle);
	msg[3] = FUNC2(0x00000000);
	msg[4] = FUNC2(0x00000000);
	msg[5] = FUNC2(0x00000000);
	msg[6] = FUNC2(0x00000000);
	msg[7] = FUNC2(0x00000780);
	msg[8] = FUNC2(0x00000440);
	msg[9] = FUNC2(0x00000000);
	msg[10] = FUNC2(0x01b37000);
	for (i = 11; i < 1024; ++i)
		msg[i] = FUNC2(0x0);

	return FUNC1(ring, bo, true, fence);
}