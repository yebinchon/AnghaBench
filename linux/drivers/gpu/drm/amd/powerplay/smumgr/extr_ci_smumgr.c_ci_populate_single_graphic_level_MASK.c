#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  sclk_down_hyst; int /*<<< orphan*/  sclk_up_hyst; int /*<<< orphan*/  sclk_activity; } ;
struct smu7_hwmgr {TYPE_2__ current_profile_setting; scalar_t__ vddc_phase_shed_control; } ;
struct TYPE_6__ {int /*<<< orphan*/  platformCaps; } ;
struct TYPE_4__ {int /*<<< orphan*/  vddc_phase_shed_limits_table; int /*<<< orphan*/  vddc_dependency_on_sclk; } ;
struct pp_hwmgr {TYPE_3__ platform_descriptor; TYPE_1__ dyn_state; scalar_t__ backend; } ;
struct SMU7_Discrete_GraphicsLevel {int MinVddc; int SclkFrequency; int MinVddcPhases; int CcPwrDynRm; int CcPwrDynRm1; int EnabledForThrottle; int CgSpllFuncCntl3; int CgSpllFuncCntl4; int SpllSpreadSpectrum; int SpllSpreadSpectrum2; int /*<<< orphan*/  ActivityLevel; int /*<<< orphan*/  DisplayWatermark; int /*<<< orphan*/  DeepSleepDivId; scalar_t__ PowerThrottle; scalar_t__ VoltageDownH; int /*<<< orphan*/  DownH; int /*<<< orphan*/  UpH; scalar_t__ EnabledForActivity; } ;

/* Variables and functions */
 int /*<<< orphan*/  CISLAND_MINIMUM_ENGINE_CLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHM_PlatformCaps_SclkDeepSleep ; 
 int /*<<< orphan*/  PPSMC_DISPLAY_WATERMARK_LOW ; 
 int FUNC2 (int) ; 
 int VOLTAGE_SCALE ; 
 int FUNC3 (struct pp_hwmgr*,int,struct SMU7_Discrete_GraphicsLevel*) ; 
 int FUNC4 (struct pp_hwmgr*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pp_hwmgr*,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct pp_hwmgr *hwmgr,
		uint32_t clock, struct SMU7_Discrete_GraphicsLevel *level)
{
	int result;
	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);


	result = FUNC3(hwmgr, clock, level);

	/* populate graphics levels */
	result = FUNC4(hwmgr,
			hwmgr->dyn_state.vddc_dependency_on_sclk, clock,
			(uint32_t *)(&level->MinVddc));
	if (result) {
		FUNC8("vdd_dep_on_sclk table is NULL\n");
		return result;
	}

	level->SclkFrequency = clock;
	level->MinVddcPhases = 1;

	if (data->vddc_phase_shed_control)
		FUNC6(hwmgr,
				hwmgr->dyn_state.vddc_phase_shed_limits_table,
				clock,
				&level->MinVddcPhases);

	level->ActivityLevel = data->current_profile_setting.sclk_activity;
	level->CcPwrDynRm = 0;
	level->CcPwrDynRm1 = 0;
	level->EnabledForActivity = 0;
	/* this level can be used for throttling.*/
	level->EnabledForThrottle = 1;
	level->UpH = data->current_profile_setting.sclk_up_hyst;
	level->DownH = data->current_profile_setting.sclk_down_hyst;
	level->VoltageDownH = 0;
	level->PowerThrottle = 0;


	if (FUNC7(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_SclkDeepSleep))
		level->DeepSleepDivId =
				FUNC5(clock,
						CISLAND_MINIMUM_ENGINE_CLOCK);

	/* Default to slow, highest DPM level will be set to PPSMC_DISPLAY_WATERMARK_LOW later.*/
	level->DisplayWatermark = PPSMC_DISPLAY_WATERMARK_LOW;

	if (0 == result) {
		level->MinVddc = FUNC2(level->MinVddc * VOLTAGE_SCALE);
		FUNC0(level->MinVddcPhases);
		FUNC0(level->SclkFrequency);
		FUNC1(level->ActivityLevel);
		FUNC0(level->CgSpllFuncCntl3);
		FUNC0(level->CgSpllFuncCntl4);
		FUNC0(level->SpllSpreadSpectrum);
		FUNC0(level->SpllSpreadSpectrum2);
		FUNC0(level->CcPwrDynRm);
		FUNC0(level->CcPwrDynRm1);
	}

	return result;
}