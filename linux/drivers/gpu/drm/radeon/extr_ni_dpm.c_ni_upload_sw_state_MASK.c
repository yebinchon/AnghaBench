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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct rv7xx_power_info {int state_table_start; int /*<<< orphan*/  sram_end; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
typedef  int /*<<< orphan*/  NISLANDS_SMC_SWSTATE ;
typedef  int /*<<< orphan*/  NISLANDS_SMC_HW_PERFORMANCE_LEVEL ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NISLANDS_MAX_SMC_PERFORMANCE_LEVELS_PER_SWSTATE ; 
 int /*<<< orphan*/  NISLANDS_SMC_STATETABLE ; 
 int /*<<< orphan*/  driverState ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct radeon_device*,struct radeon_ps*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct radeon_device*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct rv7xx_power_info* FUNC5 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC6(struct radeon_device *rdev,
			      struct radeon_ps *radeon_new_state)
{
	struct rv7xx_power_info *pi = FUNC5(rdev);
	u16 address = pi->state_table_start +
		FUNC3(NISLANDS_SMC_STATETABLE, driverState);
	u16 state_size = sizeof(NISLANDS_SMC_SWSTATE) +
		((NISLANDS_MAX_SMC_PERFORMANCE_LEVELS_PER_SWSTATE - 1) * sizeof(NISLANDS_SMC_HW_PERFORMANCE_LEVEL));
	int ret;
	NISLANDS_SMC_SWSTATE *smc_state = FUNC1(state_size, GFP_KERNEL);

	if (smc_state == NULL)
		return -ENOMEM;

	ret = FUNC2(rdev, radeon_new_state, smc_state);
	if (ret)
		goto done;

	ret = FUNC4(rdev, address, (u8 *)smc_state, state_size, pi->sram_end);

done:
	FUNC0(smc_state);

	return ret;
}