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
typedef  int uint32_t ;
struct radeon_fence {int dummy; } ;
struct TYPE_2__ {int* cpu_addr; int gpu_addr; int /*<<< orphan*/  vcpu_bo; } ;
struct radeon_device {TYPE_1__ uvd; } ;

/* Variables and functions */
 int RADEON_GPU_PAGE_SIZE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct radeon_device*,int,int,struct radeon_fence**) ; 

int FUNC5(struct radeon_device *rdev, int ring,
			       uint32_t handle, struct radeon_fence **fence)
{
	/* we use the last page of the vcpu bo for the UVD message */
	uint64_t offs = FUNC2(rdev->uvd.vcpu_bo) -
		RADEON_GPU_PAGE_SIZE;

	uint32_t *msg = rdev->uvd.cpu_addr + offs;
	uint64_t addr = rdev->uvd.gpu_addr + offs;

	int r, i;

	r = FUNC1(rdev->uvd.vcpu_bo, true);
	if (r)
		return r;

	/* stitch together an UVD destroy msg */
	msg[0] = FUNC0(0x00000de4);
	msg[1] = FUNC0(0x00000002);
	msg[2] = FUNC0(handle);
	msg[3] = FUNC0(0x00000000);
	for (i = 4; i < 1024; ++i)
		msg[i] = FUNC0(0x0);

	r = FUNC4(rdev, ring, addr, fence);
	FUNC3(rdev->uvd.vcpu_bo);
	return r;
}