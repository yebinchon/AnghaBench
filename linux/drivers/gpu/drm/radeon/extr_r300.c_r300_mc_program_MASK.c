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
struct TYPE_2__ {int gtt_start; int gtt_end; int vram_start; int vram_end; int /*<<< orphan*/  agp_base; } ;
struct radeon_device {int flags; TYPE_1__ mc; int /*<<< orphan*/  dev; } ;
struct r100_mc_save {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int RADEON_IS_AGP ; 
 int /*<<< orphan*/  R_000148_MC_FB_LOCATION ; 
 int /*<<< orphan*/  R_00014C_MC_AGP_LOCATION ; 
 int /*<<< orphan*/  R_00015C_AGP_BASE_2 ; 
 int /*<<< orphan*/  R_000170_AGP_BASE ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,struct r100_mc_save*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,struct r100_mc_save*) ; 
 scalar_t__ FUNC11 (struct radeon_device*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct radeon_device *rdev)
{
	struct r100_mc_save save;
	int r;

	r = FUNC8(rdev);
	if (r) {
		FUNC6(rdev->dev, "Failed to create r100_mc debugfs file.\n");
	}

	/* Stops all mc clients */
	FUNC10(rdev, &save);
	if (rdev->flags & RADEON_IS_AGP) {
		FUNC5(R_00014C_MC_AGP_LOCATION,
			FUNC3(rdev->mc.gtt_start >> 16) |
			FUNC4(rdev->mc.gtt_end >> 16));
		FUNC5(R_000170_AGP_BASE, FUNC7(rdev->mc.agp_base));
		FUNC5(R_00015C_AGP_BASE_2,
			FUNC12(rdev->mc.agp_base) & 0xff);
	} else {
		FUNC5(R_00014C_MC_AGP_LOCATION, 0x0FFFFFFF);
		FUNC5(R_000170_AGP_BASE, 0);
		FUNC5(R_00015C_AGP_BASE_2, 0);
	}
	/* Wait for mc idle */
	if (FUNC11(rdev))
		FUNC0("Failed to wait MC idle before programming MC.\n");
	/* Program MC, should be a 32bits limited address space */
	FUNC5(R_000148_MC_FB_LOCATION,
		FUNC1(rdev->mc.vram_start >> 16) |
		FUNC2(rdev->mc.vram_end >> 16));
	FUNC9(rdev, &save);
}