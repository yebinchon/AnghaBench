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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  driverState; } ;
struct si_power_info {int state_table_start; int /*<<< orphan*/  sram_end; TYPE_1__ smc_statetable; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct ni_ps {int performance_level_count; } ;
typedef  int /*<<< orphan*/  SISLANDS_SMC_SWSTATE ;
typedef  int /*<<< orphan*/  SISLANDS_SMC_HW_PERFORMANCE_LEVEL ;

/* Variables and functions */
 int /*<<< orphan*/  SISLANDS_SMC_STATETABLE ; 
 int /*<<< orphan*/  driverState ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct ni_ps* FUNC1 (struct radeon_ps*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct radeon_device*,struct radeon_ps*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct radeon_device*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct si_power_info* FUNC5 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC6(struct radeon_device *rdev,
			      struct radeon_ps *radeon_new_state)
{
	struct si_power_info *si_pi = FUNC5(rdev);
	struct ni_ps *new_state = FUNC1(radeon_new_state);
	int ret;
	u32 address = si_pi->state_table_start +
		FUNC2(SISLANDS_SMC_STATETABLE, driverState);
	u32 state_size = sizeof(SISLANDS_SMC_SWSTATE) +
		((new_state->performance_level_count - 1) *
		 sizeof(SISLANDS_SMC_HW_PERFORMANCE_LEVEL));
	SISLANDS_SMC_SWSTATE *smc_state = &si_pi->smc_statetable.driverState;

	FUNC0(smc_state, 0, state_size);

	ret = FUNC3(rdev, radeon_new_state, smc_state);
	if (ret)
		return ret;

	ret = FUNC4(rdev, address, (u8 *)smc_state,
				   state_size, si_pi->sram_end);

	return ret;
}