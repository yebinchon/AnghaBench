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
struct radeon_device {int flags; scalar_t__ has_uvd; } ;

/* Variables and functions */
 int RADEON_CG_BLOCK_BIF ; 
 int RADEON_CG_BLOCK_GFX ; 
 int RADEON_CG_BLOCK_HDP ; 
 int RADEON_CG_BLOCK_MC ; 
 int RADEON_CG_BLOCK_SDMA ; 
 int RADEON_CG_BLOCK_UVD ; 
 int RADEON_CG_BLOCK_VCE ; 
 int RADEON_IS_IGP ; 
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
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int) ; 

void FUNC12(struct radeon_device *rdev,
		   u32 block, bool enable)
{

	if (block & RADEON_CG_BLOCK_GFX) {
		FUNC2(rdev, false);
		/* order matters! */
		if (enable) {
			FUNC7(rdev, true);
			FUNC1(rdev, true);
		} else {
			FUNC1(rdev, false);
			FUNC7(rdev, false);
		}
		FUNC2(rdev, true);
	}

	if (block & RADEON_CG_BLOCK_MC) {
		if (!(rdev->flags & RADEON_IS_IGP)) {
			FUNC6(rdev, enable);
			FUNC5(rdev, enable);
		}
	}

	if (block & RADEON_CG_BLOCK_SDMA) {
		FUNC8(rdev, enable);
		FUNC9(rdev, enable);
	}

	if (block & RADEON_CG_BLOCK_BIF) {
		FUNC0(rdev, enable);
	}

	if (block & RADEON_CG_BLOCK_UVD) {
		if (rdev->has_uvd)
			FUNC10(rdev, enable);
	}

	if (block & RADEON_CG_BLOCK_HDP) {
		FUNC4(rdev, enable);
		FUNC3(rdev, enable);
	}

	if (block & RADEON_CG_BLOCK_VCE) {
		FUNC11(rdev, enable);
	}
}