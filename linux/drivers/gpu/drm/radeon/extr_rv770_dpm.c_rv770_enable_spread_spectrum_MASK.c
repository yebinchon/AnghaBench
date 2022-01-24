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
struct rv7xx_power_info {scalar_t__ mclk_ss; scalar_t__ sclk_ss; } ;
struct radeon_device {scalar_t__ family; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_MPLL_SPREAD_SPECTRUM ; 
 int /*<<< orphan*/  CG_SPLL_SPREAD_SPECTRUM ; 
 scalar_t__ CHIP_RV740 ; 
 int /*<<< orphan*/  DYN_SPREAD_SPECTRUM_EN ; 
 int /*<<< orphan*/  GENERAL_PWRMGT ; 
 int /*<<< orphan*/  SSEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 struct rv7xx_power_info* FUNC2 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev,
					 bool enable)
{
	struct rv7xx_power_info *pi = FUNC2(rdev);

	if (enable) {
		if (pi->sclk_ss)
			FUNC0(GENERAL_PWRMGT, DYN_SPREAD_SPECTRUM_EN, ~DYN_SPREAD_SPECTRUM_EN);

		if (pi->mclk_ss) {
			if (rdev->family == CHIP_RV740)
				FUNC1(rdev, true);
		}
	} else {
		FUNC0(CG_SPLL_SPREAD_SPECTRUM, 0, ~SSEN);

		FUNC0(GENERAL_PWRMGT, 0, ~DYN_SPREAD_SPECTRUM_EN);

		FUNC0(CG_MPLL_SPREAD_SPECTRUM, 0, ~SSEN);

		if (rdev->family == CHIP_RV740)
			FUNC1(rdev, false);
	}
}