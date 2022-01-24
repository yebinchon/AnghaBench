#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_13__ {int /*<<< orphan*/  initialState; int /*<<< orphan*/  driverState; int /*<<< orphan*/  systemFlags; int /*<<< orphan*/  thermalProtectType; } ;
struct rv7xx_power_info {int /*<<< orphan*/  sram_end; int /*<<< orphan*/  state_table_start; scalar_t__ mem_gddr5; TYPE_4__ smc_statetable; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_10__ {int platform_caps; } ;
struct TYPE_11__ {int int_thermal_type; TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct TYPE_12__ {int supported; } ;
struct evergreen_power_info {TYPE_3__ ulv; scalar_t__ sclk_deep_sleep; } ;
typedef  TYPE_4__ RV770_SMC_STATETABLE ;

/* Variables and functions */
 int ATOM_PP_PLATFORM_CAP_HARDWAREDC ; 
 int ATOM_PP_PLATFORM_CAP_REGULATOR_HOT ; 
 int ATOM_PP_PLATFORM_CAP_STEPVDDC ; 
 int /*<<< orphan*/  PPSMC_SYSTEMFLAG_GDDR5 ; 
 int /*<<< orphan*/  PPSMC_SYSTEMFLAG_GPIO_DC ; 
 int /*<<< orphan*/  PPSMC_SYSTEMFLAG_REGULATOR_HOT ; 
 int /*<<< orphan*/  PPSMC_SYSTEMFLAG_STEPVDDC ; 
 int /*<<< orphan*/  PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL ; 
 int /*<<< orphan*/  PPSMC_THERMAL_PROTECT_TYPE_INTERNAL ; 
 int /*<<< orphan*/  PPSMC_THERMAL_PROTECT_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PSKIP_ON_ALLOW_STOP_HI_MASK ; 
 int /*<<< orphan*/  SCLK_PSKIP_CNTL ; 
#define  THERMAL_TYPE_EMC2103_WITH_INTERNAL 130 
#define  THERMAL_TYPE_EVERGREEN 129 
#define  THERMAL_TYPE_NONE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct radeon_device*,TYPE_4__*) ; 
 int FUNC3 (struct radeon_device*,TYPE_4__*) ; 
 int FUNC4 (struct radeon_device*,struct radeon_ps*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,TYPE_4__*) ; 
 struct evergreen_power_info* FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct rv7xx_power_info* FUNC9 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC10(struct radeon_device *rdev,
			      struct radeon_ps *radeon_boot_state)
{
	struct rv7xx_power_info *pi = FUNC9(rdev);
	struct evergreen_power_info *eg_pi = FUNC6(rdev);
	RV770_SMC_STATETABLE *table = &pi->smc_statetable;
	int ret;

	FUNC7(table, 0, sizeof(RV770_SMC_STATETABLE));

	FUNC5(rdev, table);

	switch (rdev->pm.int_thermal_type) {
	case THERMAL_TYPE_EVERGREEN:
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

	if (eg_pi->sclk_deep_sleep)
		FUNC1(SCLK_PSKIP_CNTL, FUNC0(32),
			 ~PSKIP_ON_ALLOW_STOP_HI_MASK);

	ret = FUNC2(rdev, table);
	if (ret)
		return ret;

	if (eg_pi->ulv.supported) {
		ret = FUNC3(rdev, table);
		if (ret)
			eg_pi->ulv.supported = false;
	}

	table->driverState = table->initialState;

	return FUNC8(rdev,
				       pi->state_table_start,
				       (u8 *)table,
				       sizeof(RV770_SMC_STATETABLE),
				       pi->sram_end);
}