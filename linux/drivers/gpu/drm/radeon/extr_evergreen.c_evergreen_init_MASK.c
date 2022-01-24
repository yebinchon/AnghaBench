#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * ring_obj; } ;
struct TYPE_4__ {int /*<<< orphan*/  atom_context; } ;
struct radeon_device {int flags; int accel_working; int /*<<< orphan*/  mc_fw; int /*<<< orphan*/  dev; TYPE_2__ ih; TYPE_3__* ring; int /*<<< orphan*/  rlc_fw; int /*<<< orphan*/  pfp_fw; int /*<<< orphan*/  me_fw; int /*<<< orphan*/  ddev; TYPE_1__ mode_info; int /*<<< orphan*/  bios; int /*<<< orphan*/  is_atom_bios; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ring_obj; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int EINVAL ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 int RADEON_IS_AGP ; 
 int RADEON_IS_IGP ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*,int) ; 
 int FUNC15 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*) ; 
 int FUNC17 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct radeon_device*) ; 
 int FUNC22 (struct radeon_device*) ; 
 scalar_t__ FUNC23 (struct radeon_device*) ; 
 int FUNC24 (struct radeon_device*) ; 
 int FUNC25 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct radeon_device*) ; 
 int FUNC27 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC31 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC32 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC33 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC34 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC35 (struct radeon_device*) ; 

int FUNC36(struct radeon_device *rdev)
{
	int r;

	/* Read BIOS */
	if (!FUNC28(rdev)) {
		if (FUNC0(rdev))
			return -EINVAL;
	}
	/* Must be an ATOMBIOS */
	if (!rdev->is_atom_bios) {
		FUNC5(rdev->dev, "Expecting atombios for evergreen GPU\n");
		return -EINVAL;
	}
	r = FUNC24(rdev);
	if (r)
		return r;
	/* reset the asic, the gfx blocks are often in a bad state
	 * after the driver is unloaded or after a resume
	 */
	if (FUNC23(rdev))
		FUNC6(rdev->dev, "GPU reset failed !\n");
	/* Post card if necessary */
	if (!FUNC26(rdev)) {
		if (!rdev->bios) {
			FUNC5(rdev->dev, "Card not posted and no BIOS - ignoring\n");
			return -EINVAL;
		}
		FUNC3("GPU not posted. posting now...\n");
		FUNC4(rdev->mode_info.atom_context);
	}
	/* init golden registers */
	FUNC7(rdev);
	/* Initialize scratch registers */
	FUNC19(rdev);
	/* Initialize surface registers */
	FUNC33(rdev);
	/* Initialize clocks */
	FUNC29(rdev->ddev);
	/* Fence driver */
	r = FUNC27(rdev);
	if (r)
		return r;
	/* initialize AGP */
	if (rdev->flags & RADEON_IS_AGP) {
		r = FUNC22(rdev);
		if (r)
			FUNC21(rdev);
	}
	/* initialize memory controller */
	r = FUNC8(rdev);
	if (r)
		return r;
	/* Memory manager */
	r = FUNC25(rdev);
	if (r)
		return r;

	if (FUNC1(rdev)) {
		if (!rdev->me_fw || !rdev->pfp_fw || !rdev->rlc_fw || !rdev->mc_fw) {
			r = FUNC12(rdev);
			if (r) {
				FUNC2("Failed to load firmware!\n");
				return r;
			}
		}
	} else {
		if (!rdev->me_fw || !rdev->pfp_fw || !rdev->rlc_fw) {
			r = FUNC15(rdev);
			if (r) {
				FUNC2("Failed to load firmware!\n");
				return r;
			}
		}
	}

	/* Initialize power management */
	FUNC32(rdev);

	rdev->ring[RADEON_RING_TYPE_GFX_INDEX].ring_obj = NULL;
	FUNC18(rdev, &rdev->ring[RADEON_RING_TYPE_GFX_INDEX], 1024 * 1024);

	rdev->ring[R600_RING_TYPE_DMA_INDEX].ring_obj = NULL;
	FUNC18(rdev, &rdev->ring[R600_RING_TYPE_DMA_INDEX], 64 * 1024);

	FUNC11(rdev);

	rdev->ih.ring_obj = NULL;
	FUNC14(rdev, 64 * 1024);

	r = FUNC17(rdev);
	if (r)
		return r;

	rdev->accel_working = true;
	r = FUNC10(rdev);
	if (r) {
		FUNC5(rdev->dev, "disabling GPU acceleration\n");
		FUNC20(rdev);
		FUNC13(rdev);
		FUNC16(rdev);
		if (rdev->flags & RADEON_IS_IGP)
			FUNC35(rdev);
		FUNC34(rdev);
		FUNC30(rdev);
		FUNC31(rdev);
		FUNC9(rdev);
		rdev->accel_working = false;
	}

	/* Don't start up if the MC ucode is missing on BTC parts.
	 * The default clocks and voltages before the MC ucode
	 * is loaded are not suffient for advanced operations.
	 */
	if (FUNC1(rdev)) {
		if (!rdev->mc_fw && !(rdev->flags & RADEON_IS_IGP)) {
			FUNC2("radeon: MC ucode required for NI+.\n");
			return -EINVAL;
		}
	}

	return 0;
}