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
struct TYPE_2__ {int /*<<< orphan*/ * vcpu_bo; } ;
struct radeon_device {int /*<<< orphan*/  uvd_fw; int /*<<< orphan*/ * ring; TYPE_1__ uvd; } ;

/* Variables and functions */
 size_t R600_RING_TYPE_UVD_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct radeon_device *rdev)
{
	int r;

	if (rdev->uvd.vcpu_bo == NULL)
		return;

	r = FUNC1(rdev->uvd.vcpu_bo, false);
	if (!r) {
		FUNC0(rdev->uvd.vcpu_bo);
		FUNC2(rdev->uvd.vcpu_bo);
		FUNC4(rdev->uvd.vcpu_bo);
	}

	FUNC3(&rdev->uvd.vcpu_bo);

	FUNC5(rdev, &rdev->ring[R600_RING_TYPE_UVD_INDEX]);

	FUNC6(rdev->uvd_fw);
}