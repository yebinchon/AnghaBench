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
typedef  int uint64_t ;
struct radeon_ring {int dummy; } ;
struct radeon_fence {size_t ring; int seq; } ;
struct radeon_device {TYPE_1__* fence_drv; struct radeon_ring* ring; } ;
struct TYPE_2__ {int gpu_addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD_GPCOM_VCPU_CMD ; 
 int /*<<< orphan*/  UVD_GPCOM_VCPU_DATA0 ; 
 int /*<<< orphan*/  UVD_GPCOM_VCPU_DATA1 ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_ring*,int) ; 

void FUNC2(struct radeon_device *rdev,
			 struct radeon_fence *fence)
{
	struct radeon_ring *ring = &rdev->ring[fence->ring];
	uint64_t addr = rdev->fence_drv[fence->ring].gpu_addr;

	FUNC1(ring, FUNC0(UVD_GPCOM_VCPU_DATA0, 0));
	FUNC1(ring, addr & 0xffffffff);
	FUNC1(ring, FUNC0(UVD_GPCOM_VCPU_DATA1, 0));
	FUNC1(ring, fence->seq);
	FUNC1(ring, FUNC0(UVD_GPCOM_VCPU_CMD, 0));
	FUNC1(ring, 0);

	FUNC1(ring, FUNC0(UVD_GPCOM_VCPU_DATA0, 0));
	FUNC1(ring, 0);
	FUNC1(ring, FUNC0(UVD_GPCOM_VCPU_DATA1, 0));
	FUNC1(ring, 0);
	FUNC1(ring, FUNC0(UVD_GPCOM_VCPU_CMD, 0));
	FUNC1(ring, 2);
	return;
}