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
struct radeon_device {int flags; int accel_working; int /*<<< orphan*/  dev; int /*<<< orphan*/  ddev; scalar_t__ is_atom_bios; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int EINVAL ; 
 int RADEON_IS_AGP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_0007C0_CP_STAT ; 
 int /*<<< orphan*/  R_000E40_RBBM_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int FUNC8 (struct radeon_device*) ; 
 scalar_t__ FUNC9 (struct radeon_device*) ; 
 int FUNC10 (struct radeon_device*) ; 
 int FUNC11 (struct radeon_device*) ; 
 int FUNC12 (struct radeon_device*) ; 
 int FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct radeon_device*) ; 
 int FUNC23 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct radeon_device*) ; 
 int FUNC27 (struct radeon_device*) ; 

int FUNC28(struct radeon_device *rdev)
{
	int r;

	/* Initialize scratch registers */
	FUNC19(rdev);
	/* Initialize surface registers */
	FUNC20(rdev);
	/* TODO: disable VGA need to use VGA request */
	/* restore some register to sane defaults */
	FUNC5(rdev);
	/* BIOS*/
	if (!FUNC14(rdev)) {
		if (FUNC0(rdev))
			return -EINVAL;
	}
	if (rdev->is_atom_bios) {
		r = FUNC10(rdev);
		if (r)
			return r;
	} else {
		FUNC2(rdev->dev, "Expecting atombios for RV515 GPU\n");
		return -EINVAL;
	}
	/* Reset gpu before posting otherwise ATOM will enter infinite loop */
	if (FUNC9(rdev)) {
		FUNC3(rdev->dev,
			"GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\n",
			FUNC1(R_000E40_RBBM_STATUS),
			FUNC1(R_0007C0_CP_STAT));
	}
	/* check if cards are posted or not */
	if (FUNC12(rdev) == false)
		return -EINVAL;
	/* Initialize clocks */
	FUNC15(rdev->ddev);
	/* initialize AGP */
	if (rdev->flags & RADEON_IS_AGP) {
		r = FUNC8(rdev);
		if (r) {
			FUNC6(rdev);
		}
	}
	/* initialize memory controller */
	FUNC25(rdev);
	FUNC24(rdev);
	/* Fence driver */
	r = FUNC13(rdev);
	if (r)
		return r;
	/* Memory manager */
	r = FUNC11(rdev);
	if (r)
		return r;
	r = FUNC23(rdev);
	if (r)
		return r;
	FUNC26(rdev);

	/* Initialize power management */
	FUNC18(rdev);

	rdev->accel_working = true;
	r = FUNC27(rdev);
	if (r) {
		/* Somethings want wront with the accel init stop accel */
		FUNC2(rdev->dev, "Disabling GPU acceleration\n");
		FUNC4(rdev);
		FUNC21(rdev);
		FUNC16(rdev);
		FUNC17(rdev);
		FUNC22(rdev);
		FUNC7(rdev);
		rdev->accel_working = false;
	}
	return 0;
}