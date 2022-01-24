#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct radeon_ring {int /*<<< orphan*/ * ring_obj; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ring_obj; } ;
struct TYPE_3__ {int /*<<< orphan*/  atom_context; } ;
struct radeon_device {int flags; int accel_working; int /*<<< orphan*/  mc_fw; int /*<<< orphan*/  dev; TYPE_2__ ih; struct radeon_ring* ring; int /*<<< orphan*/  rlc_fw; int /*<<< orphan*/  pfp_fw; int /*<<< orphan*/  me_fw; int /*<<< orphan*/  ddev; TYPE_1__ mode_info; int /*<<< orphan*/  bios; int /*<<< orphan*/  is_atom_bios; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 size_t CAYMAN_RING_TYPE_DMA1_INDEX ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EINVAL ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 int RADEON_IS_IGP ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*) ; 
 int FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*) ; 
 int FUNC19 (struct radeon_device*) ; 
 int FUNC20 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct radeon_device*) ; 
 int FUNC22 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC31 (struct radeon_device*) ; 

int FUNC32(struct radeon_device *rdev)
{
	struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	int r;

	/* Read BIOS */
	if (!FUNC23(rdev)) {
		if (FUNC0(rdev))
			return -EINVAL;
	}
	/* Must be an ATOMBIOS */
	if (!rdev->is_atom_bios) {
		FUNC10(rdev->dev, "Expecting atombios for cayman GPU\n");
		return -EINVAL;
	}
	r = FUNC19(rdev);
	if (r)
		return r;

	/* Post card if necessary */
	if (!FUNC21(rdev)) {
		if (!rdev->bios) {
			FUNC10(rdev->dev, "Card not posted and no BIOS - ignoring\n");
			return -EINVAL;
		}
		FUNC2("GPU not posted. posting now...\n");
		FUNC3(rdev->mode_info.atom_context);
	}
	/* init golden registers */
	FUNC12(rdev);
	/* Initialize scratch registers */
	FUNC18(rdev);
	/* Initialize surface registers */
	FUNC28(rdev);
	/* Initialize clocks */
	FUNC24(rdev->ddev);
	/* Fence driver */
	r = FUNC22(rdev);
	if (r)
		return r;
	/* initialize memory controller */
	r = FUNC11(rdev);
	if (r)
		return r;
	/* Memory manager */
	r = FUNC20(rdev);
	if (r)
		return r;

	if (rdev->flags & RADEON_IS_IGP) {
		if (!rdev->me_fw || !rdev->pfp_fw || !rdev->rlc_fw) {
			r = FUNC13(rdev);
			if (r) {
				FUNC1("Failed to load firmware!\n");
				return r;
			}
		}
	} else {
		if (!rdev->me_fw || !rdev->pfp_fw || !rdev->rlc_fw || !rdev->mc_fw) {
			r = FUNC13(rdev);
			if (r) {
				FUNC1("Failed to load firmware!\n");
				return r;
			}
		}
	}

	/* Initialize power management */
	FUNC27(rdev);

	ring->ring_obj = NULL;
	FUNC17(rdev, ring, 1024 * 1024);

	ring = &rdev->ring[R600_RING_TYPE_DMA_INDEX];
	ring->ring_obj = NULL;
	FUNC17(rdev, ring, 64 * 1024);

	ring = &rdev->ring[CAYMAN_RING_TYPE_DMA1_INDEX];
	ring->ring_obj = NULL;
	FUNC17(rdev, ring, 64 * 1024);

	FUNC8(rdev);
	FUNC9(rdev);

	rdev->ih.ring_obj = NULL;
	FUNC14(rdev, 64 * 1024);

	r = FUNC16(rdev);
	if (r)
		return r;

	rdev->accel_working = true;
	r = FUNC7(rdev);
	if (r) {
		FUNC10(rdev->dev, "disabling GPU acceleration\n");
		FUNC4(rdev);
		FUNC5(rdev);
		FUNC15(rdev);
		if (rdev->flags & RADEON_IS_IGP)
			FUNC31(rdev);
		FUNC30(rdev);
		FUNC25(rdev);
		FUNC29(rdev);
		FUNC26(rdev);
		FUNC6(rdev);
		rdev->accel_working = false;
	}

	/* Don't start up if the MC ucode is missing.
	 * The default clocks and voltages before the MC ucode
	 * is loaded are not suffient for advanced operations.
	 *
	 * We can skip this check for TN, because there is no MC
	 * ucode.
	 */
	if (!rdev->mc_fw && !(rdev->flags & RADEON_IS_IGP)) {
		FUNC1("radeon: MC ucode required for NI+.\n");
		return -EINVAL;
	}

	return 0;
}