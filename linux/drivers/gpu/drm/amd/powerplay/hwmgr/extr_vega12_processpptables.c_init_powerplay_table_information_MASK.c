#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {scalar_t__ engineClock; scalar_t__ memoryClock; } ;
struct TYPE_8__ {int /*<<< orphan*/  platformCaps; scalar_t__ TDPODLimit; TYPE_2__ overdriveLimit; } ;
struct TYPE_6__ {scalar_t__ ucType; } ;
struct pp_hwmgr {TYPE_3__ platform_descriptor; TYPE_1__ thermal_controller; scalar_t__ pptable; } ;
struct phm_ppt_v3_information {scalar_t__ uc_thermal_controller_type; int /*<<< orphan*/ * smc_pptable; int /*<<< orphan*/  power_saving_clock_min; int /*<<< orphan*/  power_saving_clock_max; void* us_software_shutdown_temp; void* us_od_powersave_power_limit; void* us_od_turbo_power_limit; void* us_boost_power_limit; void* us_small_power_limit2; void* us_small_power_limit1; int /*<<< orphan*/  od_settings_min; int /*<<< orphan*/  od_settings_max; } ;
struct TYPE_9__ {scalar_t__ ucThermalControllerType; int /*<<< orphan*/  smcPPTable; int /*<<< orphan*/  PowerSavingClockMin; int /*<<< orphan*/  PowerSavingClockMax; int /*<<< orphan*/ * ODSettingsMax; int /*<<< orphan*/  usSoftwareShutdownTemp; int /*<<< orphan*/  usODPowerSavePowerLimit; int /*<<< orphan*/  usODTurboPowerLimit; int /*<<< orphan*/  usBoostPowerLimit; int /*<<< orphan*/  usSmallPowerLimit2; int /*<<< orphan*/  usSmallPowerLimit1; int /*<<< orphan*/ * ODSettingsMin; } ;
typedef  int /*<<< orphan*/  PPTable_t ;
typedef  TYPE_4__ ATOM_Vega12_POWERPLAYTABLE ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_VEGA12_ODSETTING_COUNT ; 
 size_t ATOM_VEGA12_ODSETTING_GFXCLKFMAX ; 
 size_t ATOM_VEGA12_ODSETTING_POWERPERCENTAGE ; 
 size_t ATOM_VEGA12_ODSETTING_UCLKFMAX ; 
 int /*<<< orphan*/  ATOM_VEGA12_PPCLOCK_COUNT ; 
 scalar_t__ ATOM_VEGA12_PP_THERMALCONTROLLER_NONE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PHM_PlatformCaps_ACOverdriveSupport ; 
 int /*<<< orphan*/  PHM_PlatformCaps_MicrocodeFanControl ; 
 int /*<<< orphan*/  PHM_PlatformCaps_PowerControl ; 
 int /*<<< orphan*/  PHM_PlatformCaps_ThermalController ; 
 scalar_t__ VEGA12_ENGINECLOCK_HARDMAX ; 
 int FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pp_hwmgr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pp_hwmgr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pp_hwmgr*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(
		struct pp_hwmgr *hwmgr,
		const ATOM_Vega12_POWERPLAYTABLE *powerplay_table)
{
	struct phm_ppt_v3_information *pptable_information =
		(struct phm_ppt_v3_information *)hwmgr->pptable;
	uint32_t disable_power_control = 0;
	int result;

	hwmgr->thermal_controller.ucType = powerplay_table->ucThermalControllerType;
	pptable_information->uc_thermal_controller_type = powerplay_table->ucThermalControllerType;

	FUNC8(hwmgr,
		ATOM_VEGA12_PP_THERMALCONTROLLER_NONE != hwmgr->thermal_controller.ucType,
		PHM_PlatformCaps_ThermalController);

	FUNC5(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_MicrocodeFanControl);

	if (FUNC3(powerplay_table->ODSettingsMax[ATOM_VEGA12_ODSETTING_GFXCLKFMAX]) > VEGA12_ENGINECLOCK_HARDMAX)
		hwmgr->platform_descriptor.overdriveLimit.engineClock = VEGA12_ENGINECLOCK_HARDMAX;
	else
		hwmgr->platform_descriptor.overdriveLimit.engineClock =
			FUNC3(powerplay_table->ODSettingsMax[ATOM_VEGA12_ODSETTING_GFXCLKFMAX]);
	hwmgr->platform_descriptor.overdriveLimit.memoryClock =
		FUNC3(powerplay_table->ODSettingsMax[ATOM_VEGA12_ODSETTING_UCLKFMAX]);

	FUNC7(hwmgr,
						 &pptable_information->od_settings_max,
						 powerplay_table->ODSettingsMax,
						 ATOM_VEGA12_ODSETTING_COUNT);
	FUNC7(hwmgr,
						 &pptable_information->od_settings_min,
						 powerplay_table->ODSettingsMin,
						 ATOM_VEGA12_ODSETTING_COUNT);

	/* hwmgr->platformDescriptor.minOverdriveVDDC = 0;
	hwmgr->platformDescriptor.maxOverdriveVDDC = 0;
	hwmgr->platformDescriptor.overdriveVDDCStep = 0; */

	if (hwmgr->platform_descriptor.overdriveLimit.engineClock > 0
		&& hwmgr->platform_descriptor.overdriveLimit.memoryClock > 0)
		FUNC5(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_ACOverdriveSupport);

	pptable_information->us_small_power_limit1 = FUNC2(powerplay_table->usSmallPowerLimit1);
	pptable_information->us_small_power_limit2 = FUNC2(powerplay_table->usSmallPowerLimit2);
	pptable_information->us_boost_power_limit = FUNC2(powerplay_table->usBoostPowerLimit);
	pptable_information->us_od_turbo_power_limit = FUNC2(powerplay_table->usODTurboPowerLimit);
	pptable_information->us_od_powersave_power_limit = FUNC2(powerplay_table->usODPowerSavePowerLimit);

	pptable_information->us_software_shutdown_temp = FUNC2(powerplay_table->usSoftwareShutdownTemp);

	hwmgr->platform_descriptor.TDPODLimit = FUNC3(powerplay_table->ODSettingsMax[ATOM_VEGA12_ODSETTING_POWERPERCENTAGE]);

	disable_power_control = 0;
	if (!disable_power_control) {
		/* enable TDP overdrive (PowerControl) feature as well if supported */
		if (hwmgr->platform_descriptor.TDPODLimit)
			FUNC5(hwmgr->platform_descriptor.platformCaps,
				PHM_PlatformCaps_PowerControl);
	}

	FUNC6(hwmgr, &pptable_information->power_saving_clock_max, powerplay_table->PowerSavingClockMax, ATOM_VEGA12_PPCLOCK_COUNT);
	FUNC6(hwmgr, &pptable_information->power_saving_clock_min, powerplay_table->PowerSavingClockMin, ATOM_VEGA12_PPCLOCK_COUNT);

	pptable_information->smc_pptable = (PPTable_t *)FUNC1(sizeof(PPTable_t), GFP_KERNEL);
	if (pptable_information->smc_pptable == NULL)
		return -ENOMEM;

	FUNC4(pptable_information->smc_pptable, &(powerplay_table->smcPPTable), sizeof(PPTable_t));

	result = FUNC0(hwmgr, (pptable_information->smc_pptable));

	return result;
}