#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_7__ {int /*<<< orphan*/  phase_shedding_limits_table; int /*<<< orphan*/  vddc_dependency_on_sclk; } ;
struct TYPE_8__ {TYPE_1__ dyn_state; } ;
struct TYPE_9__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct ci_power_info {scalar_t__ caps_sclk_ds; scalar_t__ vddc_phase_shed_control; } ;
struct TYPE_10__ {int MinVddc; int SclkFrequency; int Flags; int MinVddcPhases; int CcPwrDynRm; int CcPwrDynRm1; int EnabledForThrottle; int CgSpllFuncCntl3; int CgSpllFuncCntl4; int SpllSpreadSpectrum; int SpllSpreadSpectrum2; int /*<<< orphan*/  ActivityLevel; int /*<<< orphan*/  DisplayWatermark; int /*<<< orphan*/  DeepSleepDivId; scalar_t__ PowerThrottle; scalar_t__ VoltageDownH; scalar_t__ DownH; scalar_t__ UpH; } ;
typedef  TYPE_4__ SMU7_Discrete_GraphicsLevel ;

/* Variables and functions */
 int /*<<< orphan*/  CISLAND_MINIMUM_ENGINE_CLOCK ; 
 int /*<<< orphan*/  PPSMC_DISPLAY_WATERMARK_LOW ; 
 int VOLTAGE_SCALE ; 
 int FUNC0 (struct radeon_device*,int,TYPE_4__*) ; 
 int FUNC1 (struct radeon_device*,int /*<<< orphan*/ *,int,int*) ; 
 struct ci_power_info* FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct radeon_device *rdev,
					    u32 engine_clock,
					    u16 sclk_activity_level_t,
					    SMU7_Discrete_GraphicsLevel *graphic_level)
{
	struct ci_power_info *pi = FUNC2(rdev);
	int ret;

	ret = FUNC0(rdev, engine_clock, graphic_level);
	if (ret)
		return ret;

	ret = FUNC1(rdev,
					    &rdev->pm.dpm.dyn_state.vddc_dependency_on_sclk,
					    engine_clock, &graphic_level->MinVddc);
	if (ret)
		return ret;

	graphic_level->SclkFrequency = engine_clock;

	graphic_level->Flags =  0;
	graphic_level->MinVddcPhases = 1;

	if (pi->vddc_phase_shed_control)
		FUNC4(rdev,
						      &rdev->pm.dpm.dyn_state.phase_shedding_limits_table,
						      engine_clock,
						      &graphic_level->MinVddcPhases);

	graphic_level->ActivityLevel = sclk_activity_level_t;

	graphic_level->CcPwrDynRm = 0;
	graphic_level->CcPwrDynRm1 = 0;
	graphic_level->EnabledForThrottle = 1;
	graphic_level->UpH = 0;
	graphic_level->DownH = 0;
	graphic_level->VoltageDownH = 0;
	graphic_level->PowerThrottle = 0;

	if (pi->caps_sclk_ds)
		graphic_level->DeepSleepDivId = FUNC3(rdev,
										   engine_clock,
										   CISLAND_MINIMUM_ENGINE_CLOCK);

	graphic_level->DisplayWatermark = PPSMC_DISPLAY_WATERMARK_LOW;

	graphic_level->Flags = FUNC6(graphic_level->Flags);
	graphic_level->MinVddc = FUNC6(graphic_level->MinVddc * VOLTAGE_SCALE);
	graphic_level->MinVddcPhases = FUNC6(graphic_level->MinVddcPhases);
	graphic_level->SclkFrequency = FUNC6(graphic_level->SclkFrequency);
	graphic_level->ActivityLevel = FUNC5(graphic_level->ActivityLevel);
	graphic_level->CgSpllFuncCntl3 = FUNC6(graphic_level->CgSpllFuncCntl3);
	graphic_level->CgSpllFuncCntl4 = FUNC6(graphic_level->CgSpllFuncCntl4);
	graphic_level->SpllSpreadSpectrum = FUNC6(graphic_level->SpllSpreadSpectrum);
	graphic_level->SpllSpreadSpectrum2 = FUNC6(graphic_level->SpllSpreadSpectrum2);
	graphic_level->CcPwrDynRm = FUNC6(graphic_level->CcPwrDynRm);
	graphic_level->CcPwrDynRm1 = FUNC6(graphic_level->CcPwrDynRm1);

	return 0;
}