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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct amdgpu_ring {scalar_t__ trail_seq; int /*<<< orphan*/  idx; int /*<<< orphan*/ * trail_fence_cpu_addr; int /*<<< orphan*/  trail_fence_gpu_addr; struct amdgpu_device* adev; } ;
struct amdgpu_device {int usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*,scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSDMA0_GFX_PREEMPT ; 
 int /*<<< orphan*/  mmSDMA1_GFX_PREEMPT ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_ring*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct amdgpu_ring *ring)
{
	int i, r = 0;
	struct amdgpu_device *adev = ring->adev;
	u32 index = 0;
	u64 sdma_gfx_preempt;

	FUNC5(ring, &index);
	if (index == 0)
		sdma_gfx_preempt = mmSDMA0_GFX_PREEMPT;
	else
		sdma_gfx_preempt = mmSDMA1_GFX_PREEMPT;

	/* assert preemption condition */
	FUNC4(ring, false);

	/* emit the trailing fence */
	ring->trail_seq += 1;
	FUNC2(ring, 10);
	FUNC7(ring, ring->trail_fence_gpu_addr,
				  ring->trail_seq, 0);
	FUNC3(ring);

	/* assert IB preemption */
	FUNC1(sdma_gfx_preempt, 1);

	/* poll the trailing fence */
	for (i = 0; i < adev->usec_timeout; i++) {
		if (ring->trail_seq ==
		    FUNC6(*(ring->trail_fence_cpu_addr)))
			break;
		FUNC8(1);
	}

	if (i >= adev->usec_timeout) {
		r = -EINVAL;
		FUNC0("ring %d failed to be preempted\n", ring->idx);
	}

	/* deassert IB preemption */
	FUNC1(sdma_gfx_preempt, 0);

	/* deassert the preemption condition */
	FUNC4(ring, true);
	return r;
}