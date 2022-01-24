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
struct radeon_device {int flags; int accel_working; int /*<<< orphan*/  ddev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int RADEON_IS_PCI ; 
 int RADEON_IS_PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_0007C0_CP_STAT ; 
 int /*<<< orphan*/  R_000E40_RBBM_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int FUNC4 (struct radeon_device*) ; 
 scalar_t__ FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 

int FUNC9(struct radeon_device *rdev)
{
	int r;

	/* Make sur GART are not working */
	if (rdev->flags & RADEON_IS_PCIE)
		FUNC8(rdev);
	if (rdev->flags & RADEON_IS_PCI)
		FUNC2(rdev);
	/* Resume clock before doing reset */
	FUNC3(rdev);
	/* Reset gpu before posting otherwise ATOM will enter infinite loop */
	if (FUNC5(rdev)) {
		FUNC1(rdev->dev, "GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\n",
			FUNC0(R_000E40_RBBM_STATUS),
			FUNC0(R_0007C0_CP_STAT));
	}
	/* post */
	FUNC6(rdev->ddev);
	/* Resume clock after posting */
	FUNC3(rdev);
	/* Initialize surface registers */
	FUNC7(rdev);

	rdev->accel_working = true;
	r = FUNC4(rdev);
	if (r) {
		rdev->accel_working = false;
	}
	return r;
}