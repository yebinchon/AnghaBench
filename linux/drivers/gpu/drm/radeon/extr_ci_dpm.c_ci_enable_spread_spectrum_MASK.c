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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_device {int dummy; } ;
struct ci_power_info {scalar_t__ caps_sclk_ss_support; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_SPLL_SPREAD_SPECTRUM ; 
 int /*<<< orphan*/  DYN_SPREAD_SPECTRUM_EN ; 
 int /*<<< orphan*/  GENERAL_PWRMGT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ci_power_info* FUNC2 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev, bool enable)
{
	struct ci_power_info *pi = FUNC2(rdev);
	u32 tmp;

	if (enable) {
		if (pi->caps_sclk_ss_support) {
			tmp = FUNC0(GENERAL_PWRMGT);
			tmp |= DYN_SPREAD_SPECTRUM_EN;
			FUNC1(GENERAL_PWRMGT, tmp);
		}
	} else {
		tmp = FUNC0(CG_SPLL_SPREAD_SPECTRUM);
		tmp &= ~SSEN;
		FUNC1(CG_SPLL_SPREAD_SPECTRUM, tmp);

		tmp = FUNC0(GENERAL_PWRMGT);
		tmp &= ~DYN_SPREAD_SPECTRUM_EN;
		FUNC1(GENERAL_PWRMGT, tmp);
	}
}