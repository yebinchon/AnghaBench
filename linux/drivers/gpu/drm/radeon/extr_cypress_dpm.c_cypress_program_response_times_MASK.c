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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  RV770_SMC_SOFT_REGISTER_is_asic_lombok ; 
 int /*<<< orphan*/  RV770_SMC_SOFT_REGISTER_mc_block_delay ; 
 int /*<<< orphan*/  RV770_SMC_SOFT_REGISTER_mclk_switch_lim ; 
 int /*<<< orphan*/  RV770_SMC_SOFT_REGISTER_mvdd_chg_time ; 
 int FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct radeon_device *rdev)
{
	u32 reference_clock;
	u32 mclk_switch_limit;

	reference_clock = FUNC1(rdev);
	mclk_switch_limit = (460 * reference_clock) / 100;

	FUNC3(rdev,
				      RV770_SMC_SOFT_REGISTER_mclk_switch_lim,
				      mclk_switch_limit);

	FUNC3(rdev,
				      RV770_SMC_SOFT_REGISTER_mvdd_chg_time, 1);

	FUNC3(rdev,
				      RV770_SMC_SOFT_REGISTER_mc_block_delay, 0xAA);

	FUNC2(rdev);

	if (FUNC0(rdev))
		FUNC3(rdev,
					      RV770_SMC_SOFT_REGISTER_is_asic_lombok, 1);

}