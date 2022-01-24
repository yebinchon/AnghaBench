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
struct radeon_ring {int idx; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int R600_RING_TYPE_UVD_INDEX ; 
 int TN_RING_TYPE_VCE1_INDEX ; 
 int TN_RING_TYPE_VCE2_INDEX ; 
 int FUNC1 (struct radeon_device*,struct radeon_fence**,int) ; 
 int FUNC2 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,struct radeon_ring*) ; 
 int FUNC5 (struct radeon_device*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct radeon_device*,int,int,struct radeon_fence**) ; 
 int FUNC7 (struct radeon_device*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct radeon_device*,int,int,struct radeon_fence**) ; 

__attribute__((used)) static int FUNC9(struct radeon_device *rdev,
					     struct radeon_ring *ring,
					     struct radeon_fence **fence)
{
	uint32_t handle = ring->idx ^ 0xdeafbeef;
	int r;

	if (ring->idx == R600_RING_TYPE_UVD_INDEX) {
		r = FUNC5(rdev, ring->idx, handle, NULL);
		if (r) {
			FUNC0("Failed to get dummy create msg\n");
			return r;
		}

		r = FUNC6(rdev, ring->idx, handle, fence);
		if (r) {
			FUNC0("Failed to get dummy destroy msg\n");
			return r;
		}

	} else if (ring->idx == TN_RING_TYPE_VCE1_INDEX ||
		   ring->idx == TN_RING_TYPE_VCE2_INDEX) {
		r = FUNC7(rdev, ring->idx, handle, NULL);
		if (r) {
			FUNC0("Failed to get dummy create msg\n");
			return r;
		}

		r = FUNC8(rdev, ring->idx, handle, fence);
		if (r) {
			FUNC0("Failed to get dummy destroy msg\n");
			return r;
		}

	} else {
		r = FUNC2(rdev, ring, 64);
		if (r) {
			FUNC0("Failed to lock ring A %d\n", ring->idx);
			return r;
		}
		r = FUNC1(rdev, fence, ring->idx);
		if (r) {
			FUNC0("Failed to emit fence\n");
			FUNC4(rdev, ring);
			return r;
		}
		FUNC3(rdev, ring, false);
	}
	return 0;
}