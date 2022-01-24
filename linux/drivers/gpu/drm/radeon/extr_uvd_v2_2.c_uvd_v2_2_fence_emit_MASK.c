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
typedef  int /*<<< orphan*/  uint64_t ;
struct radeon_ring {int dummy; } ;
struct radeon_fence {size_t ring; int seq; } ;
struct radeon_device {TYPE_1__* fence_drv; struct radeon_ring* ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpu_addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD_CONTEXT_ID ; 
 int /*<<< orphan*/  UVD_GPCOM_VCPU_CMD ; 
 int /*<<< orphan*/  UVD_GPCOM_VCPU_DATA0 ; 
 int /*<<< orphan*/  UVD_GPCOM_VCPU_DATA1 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_ring*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct radeon_device *rdev,
			 struct radeon_fence *fence)
{
	struct radeon_ring *ring = &rdev->ring[fence->ring];
	uint64_t addr = rdev->fence_drv[fence->ring].gpu_addr;

	FUNC2(ring, FUNC0(UVD_CONTEXT_ID, 0));
	FUNC2(ring, fence->seq);
	FUNC2(ring, FUNC0(UVD_GPCOM_VCPU_DATA0, 0));
	FUNC2(ring, FUNC1(addr));
	FUNC2(ring, FUNC0(UVD_GPCOM_VCPU_DATA1, 0));
	FUNC2(ring, FUNC3(addr) & 0xff);
	FUNC2(ring, FUNC0(UVD_GPCOM_VCPU_CMD, 0));
	FUNC2(ring, 0);

	FUNC2(ring, FUNC0(UVD_GPCOM_VCPU_DATA0, 0));
	FUNC2(ring, 0);
	FUNC2(ring, FUNC0(UVD_GPCOM_VCPU_DATA1, 0));
	FUNC2(ring, 0);
	FUNC2(ring, FUNC0(UVD_GPCOM_VCPU_CMD, 0));
	FUNC2(ring, 2);
}