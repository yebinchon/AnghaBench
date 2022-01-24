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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_ps {scalar_t__ evclk; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  VceBootLevel; } ;
struct ci_power_info {TYPE_1__ smc_state_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPM_TABLE_475 ; 
 int /*<<< orphan*/  RADEON_CG_BLOCK_VCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VceBootLevel_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct radeon_device*,int) ; 
 struct ci_power_info* FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct radeon_device *rdev,
			     struct radeon_ps *radeon_new_state,
			     struct radeon_ps *radeon_current_state)
{
	struct ci_power_info *pi = FUNC4(rdev);
	int ret = 0;
	u32 tmp;

	if (radeon_current_state->evclk != radeon_new_state->evclk) {
		if (radeon_new_state->evclk) {
			/* turn the clocks on when encoding */
			FUNC6(rdev, RADEON_CG_BLOCK_VCE, false);

			pi->smc_state_table.VceBootLevel = FUNC5(rdev);
			tmp = FUNC0(DPM_TABLE_475);
			tmp &= ~VceBootLevel_MASK;
			tmp |= FUNC1(pi->smc_state_table.VceBootLevel);
			FUNC2(DPM_TABLE_475, tmp);

			ret = FUNC3(rdev, true);
		} else {
			/* turn the clocks off when not encoding */
			FUNC6(rdev, RADEON_CG_BLOCK_VCE, true);

			ret = FUNC3(rdev, false);
		}
	}
	return ret;
}