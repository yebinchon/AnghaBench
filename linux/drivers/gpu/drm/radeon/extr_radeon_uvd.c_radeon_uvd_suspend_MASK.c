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
typedef  scalar_t__ uint32_t ;
struct radeon_fence {int dummy; } ;
struct TYPE_2__ {int max_handles; int /*<<< orphan*/ * handles; int /*<<< orphan*/ ** filp; int /*<<< orphan*/ * vcpu_bo; } ;
struct radeon_device {TYPE_1__ uvd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  R600_RING_TYPE_UVD_INDEX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_fence**) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_fence*,int) ; 
 int FUNC5 (struct radeon_device*,int /*<<< orphan*/ ,scalar_t__,struct radeon_fence**) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 

int FUNC7(struct radeon_device *rdev)
{
	int i, r;

	if (rdev->uvd.vcpu_bo == NULL)
		return 0;

	for (i = 0; i < rdev->uvd.max_handles; ++i) {
		uint32_t handle = FUNC1(&rdev->uvd.handles[i]);
		if (handle != 0) {
			struct radeon_fence *fence;

			FUNC6(rdev);

			r = FUNC5(rdev,
				R600_RING_TYPE_UVD_INDEX, handle, &fence);
			if (r) {
				FUNC0("Error destroying UVD (%d)!\n", r);
				continue;
			}

			FUNC4(fence, false);
			FUNC3(&fence);

			rdev->uvd.filp[i] = NULL;
			FUNC2(&rdev->uvd.handles[i], 0);
		}
	}

	return 0;
}