#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct rv7xx_power_info {int /*<<< orphan*/  sram_end; int /*<<< orphan*/  state_table_start; scalar_t__ mem_gddr5; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_8__ {int platform_caps; struct radeon_ps* boot_ps; } ;
struct TYPE_9__ {int int_thermal_type; TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct TYPE_10__ {int /*<<< orphan*/  initialState; int /*<<< orphan*/  ULVState; int /*<<< orphan*/  driverState; int /*<<< orphan*/  systemFlags; int /*<<< orphan*/  thermalProtectType; } ;
struct ni_power_info {TYPE_3__ smc_statetable; } ;
typedef  TYPE_3__ NISLANDS_SMC_STATETABLE ;

/* Variables and functions */
 int ATOM_PP_PLATFORM_CAP_HARDWAREDC ; 
 int ATOM_PP_PLATFORM_CAP_REGULATOR_HOT ; 
 int ATOM_PP_PLATFORM_CAP_STEPVDDC ; 
 int /*<<< orphan*/  NISLANDS_INITIAL_STATE_ARB_INDEX ; 
 int /*<<< orphan*/  PPSMC_SYSTEMFLAG_GDDR5 ; 
 int /*<<< orphan*/  PPSMC_SYSTEMFLAG_GPIO_DC ; 
 int /*<<< orphan*/  PPSMC_SYSTEMFLAG_REGULATOR_HOT ; 
 int /*<<< orphan*/  PPSMC_SYSTEMFLAG_STEPVDDC ; 
 int /*<<< orphan*/  PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL ; 
 int /*<<< orphan*/  PPSMC_THERMAL_PROTECT_TYPE_INTERNAL ; 
 int /*<<< orphan*/  PPSMC_THERMAL_PROTECT_TYPE_NONE ; 
#define  THERMAL_TYPE_EMC2103_WITH_INTERNAL 130 
#define  THERMAL_TYPE_NI 129 
#define  THERMAL_TYPE_NONE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct radeon_device*,struct radeon_ps*,int /*<<< orphan*/ ) ; 
 struct ni_power_info* FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*,TYPE_3__*) ; 
 int FUNC4 (struct radeon_device*,struct radeon_ps*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,TYPE_3__*) ; 
 int FUNC6 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct rv7xx_power_info* FUNC7 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC8(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC7(rdev);
	struct ni_power_info *ni_pi = FUNC2(rdev);
	int ret;
	struct radeon_ps *radeon_boot_state = rdev->pm.dpm.boot_ps;
	NISLANDS_SMC_STATETABLE *table = &ni_pi->smc_statetable;

	FUNC0(table, 0, sizeof(NISLANDS_SMC_STATETABLE));

	FUNC5(rdev, table);

	switch (rdev->pm.int_thermal_type) {
	case THERMAL_TYPE_NI:
	case THERMAL_TYPE_EMC2103_WITH_INTERNAL:
		table->thermalProtectType = PPSMC_THERMAL_PROTECT_TYPE_INTERNAL;
		break;
	case THERMAL_TYPE_NONE:
		table->thermalProtectType = PPSMC_THERMAL_PROTECT_TYPE_NONE;
		break;
	default:
		table->thermalProtectType = PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL;
		break;
	}

	if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_HARDWAREDC)
		table->systemFlags |= PPSMC_SYSTEMFLAG_GPIO_DC;

	if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_REGULATOR_HOT)
		table->systemFlags |= PPSMC_SYSTEMFLAG_REGULATOR_HOT;

	if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_STEPVDDC)
		table->systemFlags |= PPSMC_SYSTEMFLAG_STEPVDDC;

	if (pi->mem_gddr5)
		table->systemFlags |= PPSMC_SYSTEMFLAG_GDDR5;

	ret = FUNC4(rdev, radeon_boot_state, table);
	if (ret)
		return ret;

	ret = FUNC3(rdev, table);
	if (ret)
		return ret;

	table->driverState = table->initialState;

	table->ULVState = table->initialState;

	ret = FUNC1(rdev, radeon_boot_state,
						     NISLANDS_INITIAL_STATE_ARB_INDEX);
	if (ret)
		return ret;

	return FUNC6(rdev, pi->state_table_start, (u8 *)table,
				       sizeof(NISLANDS_SMC_STATETABLE), pi->sram_end);
}