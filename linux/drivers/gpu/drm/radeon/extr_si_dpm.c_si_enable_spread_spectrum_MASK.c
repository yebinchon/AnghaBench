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
struct rv7xx_power_info {scalar_t__ sclk_ss; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_SPLL_SPREAD_SPECTRUM ; 
 int /*<<< orphan*/  DYN_SPREAD_SPECTRUM_EN ; 
 int /*<<< orphan*/  GENERAL_PWRMGT ; 
 int /*<<< orphan*/  SSEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rv7xx_power_info* FUNC1 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev, bool enable)
{
	struct rv7xx_power_info *pi = FUNC1(rdev);

	if (enable) {
		if (pi->sclk_ss)
			FUNC0(GENERAL_PWRMGT, DYN_SPREAD_SPECTRUM_EN, ~DYN_SPREAD_SPECTRUM_EN);
	} else {
		FUNC0(CG_SPLL_SPREAD_SPECTRUM, 0, ~SSEN);
		FUNC0(GENERAL_PWRMGT, 0, ~DYN_SPREAD_SPECTRUM_EN);
	}
}