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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {scalar_t__ pm_method; int dpm_enabled; } ;
struct TYPE_5__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_4__ {scalar_t__ bl_encoder; } ;
struct radeon_device {int needs_reset; int in_reset; int /*<<< orphan*/  exclusive_lock; int /*<<< orphan*/  dev; TYPE_3__ pm; int /*<<< orphan*/  ddev; TYPE_2__ mman; TYPE_1__ mode_info; scalar_t__ is_atom_bios; int /*<<< orphan*/ * ring; int /*<<< orphan*/  gpu_reset_counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EAGAIN ; 
 scalar_t__ PM_METHOD_DPM ; 
 int RADEON_NUM_RINGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 
 int FUNC14 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*) ; 
 int FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct radeon_device*) ; 
 unsigned int FUNC20 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC21 (struct radeon_device*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct radeon_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct radeon_device*) ; 
 int FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

int FUNC29(struct radeon_device *rdev)
{
	unsigned ring_sizes[RADEON_NUM_RINGS];
	uint32_t *ring_data[RADEON_NUM_RINGS];

	bool saved = false;

	int i, r;
	int resched;

	FUNC3(&rdev->exclusive_lock);

	if (!rdev->needs_reset) {
		FUNC28(&rdev->exclusive_lock);
		return 0;
	}

	FUNC1(&rdev->gpu_reset_counter);

	FUNC22(rdev);
	/* block TTM */
	resched = FUNC25(&rdev->mman.bdev);
	FUNC24(rdev);
	FUNC12(rdev);

	for (i = 0; i < RADEON_NUM_RINGS; ++i) {
		ring_sizes[i] = FUNC20(rdev, &rdev->ring[i],
						   &ring_data[i]);
		if (ring_sizes[i]) {
			saved = true;
			FUNC2(rdev->dev, "Saved %d dwords of commands "
				 "on ring %d.\n", ring_sizes[i], i);
		}
	}

	r = FUNC7(rdev);
	if (!r) {
		FUNC2(rdev->dev, "GPU reset succeeded, trying to resume\n");
		FUNC19(rdev);
	}

	FUNC18(rdev);

	for (i = 0; i < RADEON_NUM_RINGS; ++i) {
		if (!r && ring_data[i]) {
			FUNC21(rdev, &rdev->ring[i],
					    ring_sizes[i], ring_data[i]);
		} else {
			FUNC10(rdev, i);
			FUNC6(ring_data[i]);
		}
	}

	if ((rdev->pm.pm_method == PM_METHOD_DPM) && rdev->pm.dpm_enabled) {
		/* do dpm late init */
		r = FUNC16(rdev);
		if (r) {
			rdev->pm.dpm_enabled = false;
			FUNC0("radeon_pm_late_init failed, disabling dpm\n");
		}
	} else {
		/* resume old pm late */
		FUNC17(rdev);
	}

	/* init dig PHYs, disp eng pll */
	if (rdev->is_atom_bios) {
		FUNC9(rdev);
		FUNC8(rdev);
		/* turn on the BL */
		if (rdev->mode_info.bl_encoder) {
			u8 bl_level = FUNC11(rdev,
								 rdev->mode_info.bl_encoder);
			FUNC23(rdev, rdev->mode_info.bl_encoder,
						   bl_level);
		}
	}
	/* reset hpd state */
	FUNC13(rdev);

	FUNC26(&rdev->mman.bdev, resched);

	rdev->in_reset = true;
	rdev->needs_reset = false;

	FUNC4(&rdev->exclusive_lock);

	FUNC5(rdev->ddev);

	/* set the power state here in case we are a PX system or headless */
	if ((rdev->pm.pm_method == PM_METHOD_DPM) && rdev->pm.dpm_enabled)
		FUNC15(rdev);

	if (!r) {
		r = FUNC14(rdev);
		if (r && saved)
			r = -EAGAIN;
	} else {
		/* bad news, how to tell it to userspace ? */
		FUNC2(rdev->dev, "GPU reset failed\n");
	}

	rdev->needs_reset = r == -EAGAIN;
	rdev->in_reset = false;

	FUNC27(&rdev->exclusive_lock);
	return r;
}