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
struct radeon_device {int flags; int accel_working; int /*<<< orphan*/  dev; int /*<<< orphan*/  ddev; TYPE_1__ mode_info; scalar_t__ bios; scalar_t__ is_atom_bios; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int RADEON_IS_AGP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_0007C0_CP_STAT ; 
 int /*<<< orphan*/  R_000E40_RBBM_STATUS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int FUNC12 (struct radeon_device*) ; 
 scalar_t__ FUNC13 (struct radeon_device*) ; 
 int FUNC14 (struct radeon_device*) ; 
 int FUNC15 (struct radeon_device*) ; 
 int FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*) ; 
 int FUNC18 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct radeon_device*) ; 
 int FUNC28 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct radeon_device*) ; 

int FUNC31(struct radeon_device *rdev)
{
	int r;

	/* Initialize scratch registers */
	FUNC24(rdev);
	/* Initialize surface registers */
	FUNC25(rdev);
	/* restore some register to sane defaults */
	FUNC7(rdev);
	/* TODO: disable VGA need to use VGA request */
	/* BIOS*/
	if (!FUNC19(rdev)) {
		if (FUNC0(rdev))
			return -EINVAL;
	}
	if (rdev->is_atom_bios) {
		r = FUNC14(rdev);
		if (r)
			return r;
	} else {
		FUNC4(rdev->dev, "Expecting atombios for RV515 GPU\n");
		return -EINVAL;
	}
	/* Reset gpu before posting otherwise ATOM will enter infinite loop */
	if (FUNC13(rdev)) {
		FUNC5(rdev->dev,
			"GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\n",
			FUNC2(R_000E40_RBBM_STATUS),
			FUNC2(R_0007C0_CP_STAT));
	}
	/* check if cards are posted or not */
	if (FUNC16(rdev) == false)
		return -EINVAL;

	if (!FUNC17(rdev) && rdev->bios) {
		FUNC1("GPU not posted. posting now...\n");
		FUNC3(rdev->mode_info.atom_context);
	}
	/* Initialize clocks */
	FUNC20(rdev->ddev);
	/* initialize AGP */
	if (rdev->flags & RADEON_IS_AGP) {
		r = FUNC12(rdev);
		if (r) {
			FUNC10(rdev);
		}
	}
	/* initialize memory controller */
	FUNC8(rdev);
	FUNC29(rdev);
	/* Fence driver */
	r = FUNC18(rdev);
	if (r)
		return r;
	/* Memory manager */
	r = FUNC15(rdev);
	if (r)
		return r;
	r = FUNC28(rdev);
	if (r)
		return r;
	FUNC30(rdev);

	/* Initialize power management */
	FUNC23(rdev);

	rdev->accel_working = true;
	r = FUNC9(rdev);
	if (r) {
		/* Somethings want wront with the accel init stop accel */
		FUNC4(rdev->dev, "Disabling GPU acceleration\n");
		FUNC6(rdev);
		FUNC26(rdev);
		FUNC21(rdev);
		FUNC22(rdev);
		FUNC27(rdev);
		FUNC11(rdev);
		rdev->accel_working = false;
	}
	return 0;
}