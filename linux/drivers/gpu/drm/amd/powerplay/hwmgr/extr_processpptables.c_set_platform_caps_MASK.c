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
struct pp_hwmgr {int dummy; } ;

/* Variables and functions */
 unsigned long ATOM_PP_PLATFORM_CAP_ASPM_L0s ; 
 unsigned long ATOM_PP_PLATFORM_CAP_ASPM_L1 ; 
 unsigned long ATOM_PP_PLATFORM_CAP_BACKBIAS ; 
 unsigned long ATOM_PP_PLATFORM_CAP_BACO ; 
 unsigned long ATOM_PP_PLATFORM_CAP_DISABLE_USING_ACTUAL_TEMPERATURE_FOR_POWER_CALC ; 
 unsigned long ATOM_PP_PLATFORM_CAP_DONT_WAIT_FOR_VBLANK_ON_ALERT ; 
 unsigned long ATOM_PP_PLATFORM_CAP_EVV ; 
 unsigned long ATOM_PP_PLATFORM_CAP_GEMINIPRIMARY ; 
 unsigned long ATOM_PP_PLATFORM_CAP_GOTO_BOOT_ON_ALERT ; 
 unsigned long ATOM_PP_PLATFORM_CAP_HARDWAREDC ; 
 unsigned long ATOM_PP_PLATFORM_CAP_HTLINKCONTROL ; 
 unsigned long ATOM_PP_PLATFORM_CAP_MVDDCONTROL ; 
 unsigned long ATOM_PP_PLATFORM_CAP_NEW_CAC_VOLTAGE ; 
 unsigned long ATOM_PP_PLATFORM_CAP_OUTPUT_THERMAL2GPIO17 ; 
 unsigned long ATOM_PP_PLATFORM_CAP_POWERPLAY ; 
 unsigned long ATOM_PP_PLATFORM_CAP_REGULATOR_HOT ; 
 unsigned long ATOM_PP_PLATFORM_CAP_REVERT_GPIO5_POLARITY ; 
 unsigned long ATOM_PP_PLATFORM_CAP_SBIOSPOWERSOURCE ; 
 unsigned long ATOM_PP_PLATFORM_CAP_SIDEPORTCONTROL ; 
 unsigned long ATOM_PP_PLATFORM_CAP_STEPVDDC ; 
 unsigned long ATOM_PP_PLATFORM_CAP_TEMP_INVERSION ; 
 unsigned long ATOM_PP_PLATFORM_CAP_TURNOFFPLL_ASPML1 ; 
 unsigned long ATOM_PP_PLATFORM_CAP_VDDCI_CONTROL ; 
 unsigned long ATOM_PP_PLATFORM_CAP_VOLTAGECONTROL ; 
 unsigned long ATOM_PP_PLATFORM_CAP_VRHOT_GPIO_CONFIGURABLE ; 
 unsigned long ATOM_PP_PLATFORM_COMBINE_PCC_WITH_THERMAL_SIGNAL ; 
 unsigned long ATOM_PP_PLATFORM_LOAD_POST_PRODUCTION_FIRMWARE ; 
 int /*<<< orphan*/  PHM_PlatformCaps_AutomaticDCTransition ; 
 int /*<<< orphan*/  PHM_PlatformCaps_BACO ; 
 int /*<<< orphan*/  PHM_PlatformCaps_BiosPowerSourceControl ; 
 int /*<<< orphan*/  PHM_PlatformCaps_BootStateOnAlert ; 
 int /*<<< orphan*/  PHM_PlatformCaps_CombinePCCWithThermalSignal ; 
 int /*<<< orphan*/  PHM_PlatformCaps_ControlVDDCI ; 
 int /*<<< orphan*/  PHM_PlatformCaps_DisableUsingActualTemperatureForPowerCalc ; 
 int /*<<< orphan*/  PHM_PlatformCaps_DontWaitForVBlankOnAlert ; 
 int /*<<< orphan*/  PHM_PlatformCaps_EVV ; 
 int /*<<< orphan*/  PHM_PlatformCaps_EnableASPML0s ; 
 int /*<<< orphan*/  PHM_PlatformCaps_EnableASPML1 ; 
 int /*<<< orphan*/  PHM_PlatformCaps_EnableBackbias ; 
 int /*<<< orphan*/  PHM_PlatformCaps_EnableHTLinkControl ; 
 int /*<<< orphan*/  PHM_PlatformCaps_EnableMVDDControl ; 
 int /*<<< orphan*/  PHM_PlatformCaps_EnableSideportControl ; 
 int /*<<< orphan*/  PHM_PlatformCaps_EnableVoltageControl ; 
 int /*<<< orphan*/  PHM_PlatformCaps_GeminiPrimary ; 
 int /*<<< orphan*/  PHM_PlatformCaps_LoadPostProductionFirmware ; 
 int /*<<< orphan*/  PHM_PlatformCaps_NewCACVoltage ; 
 int /*<<< orphan*/  PHM_PlatformCaps_PowerPlaySupport ; 
 int /*<<< orphan*/  PHM_PlatformCaps_RegulatorHot ; 
 int /*<<< orphan*/  PHM_PlatformCaps_RevertGPIO5Polarity ; 
 int /*<<< orphan*/  PHM_PlatformCaps_StepVddc ; 
 int /*<<< orphan*/  PHM_PlatformCaps_TempInversion ; 
 int /*<<< orphan*/  PHM_PlatformCaps_Thermal2GPIO17 ; 
 int /*<<< orphan*/  PHM_PlatformCaps_TurnOffPll_ASPML1 ; 
 int /*<<< orphan*/  PHM_PlatformCaps_VRHotGPIOConfigurable ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct pp_hwmgr *hwmgr,
			unsigned long powerplay_caps)
{
	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_POWERPLAY),
		PHM_PlatformCaps_PowerPlaySupport
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_SBIOSPOWERSOURCE),
		PHM_PlatformCaps_BiosPowerSourceControl
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_ASPM_L0s),
		PHM_PlatformCaps_EnableASPML0s
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_ASPM_L1),
		PHM_PlatformCaps_EnableASPML1
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_BACKBIAS),
		PHM_PlatformCaps_EnableBackbias
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_HARDWAREDC),
		PHM_PlatformCaps_AutomaticDCTransition
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_GEMINIPRIMARY),
		PHM_PlatformCaps_GeminiPrimary
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_STEPVDDC),
		PHM_PlatformCaps_StepVddc
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_VOLTAGECONTROL),
		PHM_PlatformCaps_EnableVoltageControl
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_SIDEPORTCONTROL),
		PHM_PlatformCaps_EnableSideportControl
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_TURNOFFPLL_ASPML1),
		PHM_PlatformCaps_TurnOffPll_ASPML1
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_HTLINKCONTROL),
		PHM_PlatformCaps_EnableHTLinkControl
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_MVDDCONTROL),
		PHM_PlatformCaps_EnableMVDDControl
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_VDDCI_CONTROL),
		PHM_PlatformCaps_ControlVDDCI
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_REGULATOR_HOT),
		PHM_PlatformCaps_RegulatorHot
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_GOTO_BOOT_ON_ALERT),
		PHM_PlatformCaps_BootStateOnAlert
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_DONT_WAIT_FOR_VBLANK_ON_ALERT),
		PHM_PlatformCaps_DontWaitForVBlankOnAlert
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_BACO),
		PHM_PlatformCaps_BACO
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_NEW_CAC_VOLTAGE),
		PHM_PlatformCaps_NewCACVoltage
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_REVERT_GPIO5_POLARITY),
		PHM_PlatformCaps_RevertGPIO5Polarity
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_OUTPUT_THERMAL2GPIO17),
		PHM_PlatformCaps_Thermal2GPIO17
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_VRHOT_GPIO_CONFIGURABLE),
		PHM_PlatformCaps_VRHotGPIOConfigurable
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_TEMP_INVERSION),
		PHM_PlatformCaps_TempInversion
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_EVV),
		PHM_PlatformCaps_EVV
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_COMBINE_PCC_WITH_THERMAL_SIGNAL),
		PHM_PlatformCaps_CombinePCCWithThermalSignal
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_LOAD_POST_PRODUCTION_FIRMWARE),
		PHM_PlatformCaps_LoadPostProductionFirmware
	);

	FUNC0(
		hwmgr,
		0 != (powerplay_caps & ATOM_PP_PLATFORM_CAP_DISABLE_USING_ACTUAL_TEMPERATURE_FOR_POWER_CALC),
		PHM_PlatformCaps_DisableUsingActualTemperatureForPowerCalc
	);

	return 0;
}