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
struct TYPE_2__ {int /*<<< orphan*/  atom_context; } ;
struct radeon_device {int flags; int accel_working; int /*<<< orphan*/  ddev; TYPE_1__ mode_info; scalar_t__ is_atom_bios; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int RADEON_IS_PCI ; 
 int RADEON_IS_PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_0007C0_CP_STAT ; 
 int /*<<< orphan*/  R_000E40_RBBM_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int FUNC5 (struct radeon_device*) ; 
 scalar_t__ FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 

int FUNC10(struct radeon_device *rdev)
{
	int r;

	/* Make sur GART are not working */
	if (rdev->flags & RADEON_IS_PCIE)
		FUNC9(rdev);
	if (rdev->flags & RADEON_IS_PCI)
		FUNC3(rdev);
	/* Resume clock before doing reset */
	FUNC4(rdev);
	/* Reset gpu before posting otherwise ATOM will enter infinite loop */
	if (FUNC6(rdev)) {
		FUNC2(rdev->dev, "GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\n",
			FUNC0(R_000E40_RBBM_STATUS),
			FUNC0(R_0007C0_CP_STAT));
	}
	/* check if cards are posted or not */
	if (rdev->is_atom_bios) {
		FUNC1(rdev->mode_info.atom_context);
	} else {
		FUNC7(rdev->ddev);
	}
	/* Resume clock after posting */
	FUNC4(rdev);
	/* Initialize surface registers */
	FUNC8(rdev);

	rdev->accel_working = true;
	r = FUNC5(rdev);
	if (r) {
		rdev->accel_working = false;
	}
	return r;
}