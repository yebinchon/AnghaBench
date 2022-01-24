#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dma_fence {int dummy; } ;
struct amdgpu_ring {TYPE_1__* funcs; TYPE_2__* adev; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_4__ {int /*<<< orphan*/  gpu_reset_counter; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* soft_recovery ) (struct amdgpu_ring*,unsigned int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_ring*,unsigned int) ; 

bool FUNC8(struct amdgpu_ring *ring, unsigned int vmid,
			       struct dma_fence *fence)
{
	ktime_t deadline = FUNC3(FUNC4(), 10000);

	if (FUNC0(ring->adev) || !ring->funcs->soft_recovery || !fence)
		return false;

	FUNC1(&ring->adev->gpu_reset_counter);
	while (!FUNC2(fence) &&
	       FUNC6(FUNC5(deadline, FUNC4())) > 0)
		ring->funcs->soft_recovery(ring, vmid);

	return FUNC2(fence);
}