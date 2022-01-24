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
struct radeon_fence {size_t ring; int /*<<< orphan*/  seq; } ;
struct radeon_device {TYPE_1__* fence_drv; struct radeon_ring* ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpu_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCE_CMD_END ; 
 int /*<<< orphan*/  VCE_CMD_FENCE ; 
 int /*<<< orphan*/  VCE_CMD_TRAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct radeon_device *rdev,
			   struct radeon_fence *fence)
{
	struct radeon_ring *ring = &rdev->ring[fence->ring];
	uint64_t addr = rdev->fence_drv[fence->ring].gpu_addr;

	FUNC1(ring, FUNC0(VCE_CMD_FENCE));
	FUNC1(ring, FUNC0(addr));
	FUNC1(ring, FUNC0(FUNC2(addr)));
	FUNC1(ring, FUNC0(fence->seq));
	FUNC1(ring, FUNC0(VCE_CMD_TRAP));
	FUNC1(ring, FUNC0(VCE_CMD_END));
}