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
typedef  int u32 ;
struct TYPE_2__ {int grbm_soft_reset; int srbm_soft_reset; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; TYPE_1__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFX_CLEAR ; 
 int /*<<< orphan*/  GFX_STALL ; 
 int /*<<< orphan*/  GMCON_DEBUG ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  mmGMCON_DEBUG ; 
 int /*<<< orphan*/  mmGRBM_SOFT_RESET ; 
 int /*<<< orphan*/  mmSRBM_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	u32 grbm_soft_reset = 0, srbm_soft_reset = 0;
	u32 tmp;

	if ((!adev->gfx.grbm_soft_reset) &&
	    (!adev->gfx.srbm_soft_reset))
		return 0;

	grbm_soft_reset = adev->gfx.grbm_soft_reset;
	srbm_soft_reset = adev->gfx.srbm_soft_reset;

	if (grbm_soft_reset || srbm_soft_reset) {
		tmp = FUNC1(mmGMCON_DEBUG);
		tmp = FUNC0(tmp, GMCON_DEBUG, GFX_STALL, 1);
		tmp = FUNC0(tmp, GMCON_DEBUG, GFX_CLEAR, 1);
		FUNC2(mmGMCON_DEBUG, tmp);
		FUNC4(50);
	}

	if (grbm_soft_reset) {
		tmp = FUNC1(mmGRBM_SOFT_RESET);
		tmp |= grbm_soft_reset;
		FUNC3(adev->dev, "GRBM_SOFT_RESET=0x%08X\n", tmp);
		FUNC2(mmGRBM_SOFT_RESET, tmp);
		tmp = FUNC1(mmGRBM_SOFT_RESET);

		FUNC4(50);

		tmp &= ~grbm_soft_reset;
		FUNC2(mmGRBM_SOFT_RESET, tmp);
		tmp = FUNC1(mmGRBM_SOFT_RESET);
	}

	if (srbm_soft_reset) {
		tmp = FUNC1(mmSRBM_SOFT_RESET);
		tmp |= srbm_soft_reset;
		FUNC3(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
		FUNC2(mmSRBM_SOFT_RESET, tmp);
		tmp = FUNC1(mmSRBM_SOFT_RESET);

		FUNC4(50);

		tmp &= ~srbm_soft_reset;
		FUNC2(mmSRBM_SOFT_RESET, tmp);
		tmp = FUNC1(mmSRBM_SOFT_RESET);
	}

	if (grbm_soft_reset || srbm_soft_reset) {
		tmp = FUNC1(mmGMCON_DEBUG);
		tmp = FUNC0(tmp, GMCON_DEBUG, GFX_STALL, 0);
		tmp = FUNC0(tmp, GMCON_DEBUG, GFX_CLEAR, 0);
		FUNC2(mmGMCON_DEBUG, tmp);
	}

	/* Wait a little for things to settle down */
	FUNC4(50);

	return 0;
}