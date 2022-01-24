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
typedef  int u32 ;
struct radeon_device {scalar_t__ has_uvd; } ;

/* Variables and functions */
 int RADEON_CG_BLOCK_BIF ; 
 int RADEON_CG_BLOCK_GFX ; 
 int RADEON_CG_BLOCK_HDP ; 
 int RADEON_CG_BLOCK_MC ; 
 int RADEON_CG_BLOCK_SDMA ; 
 int RADEON_CG_BLOCK_UVD ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int) ; 

__attribute__((used)) static void FUNC10(struct radeon_device *rdev,
			 u32 block, bool enable)
{
	if (block & RADEON_CG_BLOCK_GFX) {
		FUNC3(rdev, false);
		/* order matters! */
		if (enable) {
			FUNC8(rdev, true);
			FUNC1(rdev, true);
		} else {
			FUNC1(rdev, false);
			FUNC8(rdev, false);
		}
		FUNC3(rdev, true);
	}

	if (block & RADEON_CG_BLOCK_MC) {
		FUNC7(rdev, enable);
		FUNC6(rdev, enable);
	}

	if (block & RADEON_CG_BLOCK_SDMA) {
		FUNC2(rdev, enable);
	}

	if (block & RADEON_CG_BLOCK_BIF) {
		FUNC0(rdev, enable);
	}

	if (block & RADEON_CG_BLOCK_UVD) {
		if (rdev->has_uvd) {
			FUNC9(rdev, enable);
		}
	}

	if (block & RADEON_CG_BLOCK_HDP) {
		FUNC5(rdev, enable);
		FUNC4(rdev, enable);
	}
}