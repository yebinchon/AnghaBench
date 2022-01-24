#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_11__ {int /*<<< orphan*/  platformCaps; } ;
struct TYPE_9__ {int usPWMMin; int usTMed; int usTMin; int usTHigh; int usPWMMed; int usPWMHigh; int usTMax; int ucTHyst; int ulCycleDelay; scalar_t__ ulMinFanSCLKAcousticLimit; scalar_t__ ucMinimumPWMLimit; } ;
struct TYPE_7__ {scalar_t__ bNoFan; } ;
struct TYPE_10__ {TYPE_3__ advanceFanControlParameters; TYPE_1__ fanInfo; } ;
struct pp_hwmgr {TYPE_5__ platform_descriptor; TYPE_4__ thermal_controller; int /*<<< orphan*/  device; scalar_t__ adev; scalar_t__ smu_backend; } ;
struct TYPE_8__ {scalar_t__ fan_table_start; } ;
struct fiji_smumgr {TYPE_2__ smu7_data; } ;
struct amdgpu_device {int dummy; } ;
typedef  int /*<<< orphan*/  fan_table ;
struct TYPE_12__ {scalar_t__ TempSrc; void* FdoMax; int /*<<< orphan*/  RefreshPeriod; void* TempRespLim; void* HystSlope; void* HystUp; void* HystDown; void* FdoMin; void* Slope2; void* Slope1; void* TempMax; void* TempMed; void* TempMin; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_6__ SMU73_Discrete_FanTable ;

/* Variables and functions */
 int /*<<< orphan*/  CGS_IND_REG__SMC ; 
 int /*<<< orphan*/  CG_FDO_CTRL1 ; 
 int /*<<< orphan*/  CG_MULT_THERMAL_CTRL ; 
 int /*<<< orphan*/  FDO_MODE_HARDWARE ; 
 int /*<<< orphan*/  FMAX_DUTY100 ; 
 int /*<<< orphan*/  PHM_PlatformCaps_MicrocodeFanControl ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PPSMC_MSG_SetFanMinPwm ; 
 int /*<<< orphan*/  PPSMC_MSG_SetFanSclkTarget ; 
 int /*<<< orphan*/  SMC_RAM_END ; 
 int /*<<< orphan*/  TEMP_SEL ; 
 int FUNC1 (struct amdgpu_device*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pp_hwmgr*,scalar_t__,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pp_hwmgr*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct pp_hwmgr *hwmgr)
{
	struct fiji_smumgr *smu_data = (struct fiji_smumgr *)(hwmgr->smu_backend);

	SMU73_Discrete_FanTable fan_table = { FDO_MODE_HARDWARE };
	uint32_t duty100;
	uint32_t t_diff1, t_diff2, pwm_diff1, pwm_diff2;
	uint16_t fdo_min, slope1, slope2;
	uint32_t reference_clock;
	int res;
	uint64_t tmp64;

	if (hwmgr->thermal_controller.fanInfo.bNoFan) {
		FUNC5(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_MicrocodeFanControl);
		return 0;
	}

	if (smu_data->smu7_data.fan_table_start == 0) {
		FUNC5(hwmgr->platform_descriptor.platformCaps,
				PHM_PlatformCaps_MicrocodeFanControl);
		return 0;
	}

	duty100 = FUNC0(hwmgr->device, CGS_IND_REG__SMC,
			CG_FDO_CTRL1, FMAX_DUTY100);

	if (duty100 == 0) {
		FUNC5(hwmgr->platform_descriptor.platformCaps,
				PHM_PlatformCaps_MicrocodeFanControl);
		return 0;
	}

	tmp64 = hwmgr->thermal_controller.advanceFanControlParameters.
			usPWMMin * duty100;
	FUNC4(tmp64, 10000);
	fdo_min = (uint16_t)tmp64;

	t_diff1 = hwmgr->thermal_controller.advanceFanControlParameters.usTMed -
			hwmgr->thermal_controller.advanceFanControlParameters.usTMin;
	t_diff2 = hwmgr->thermal_controller.advanceFanControlParameters.usTHigh -
			hwmgr->thermal_controller.advanceFanControlParameters.usTMed;

	pwm_diff1 = hwmgr->thermal_controller.advanceFanControlParameters.usPWMMed -
			hwmgr->thermal_controller.advanceFanControlParameters.usPWMMin;
	pwm_diff2 = hwmgr->thermal_controller.advanceFanControlParameters.usPWMHigh -
			hwmgr->thermal_controller.advanceFanControlParameters.usPWMMed;

	slope1 = (uint16_t)((50 + ((16 * duty100 * pwm_diff1) / t_diff1)) / 100);
	slope2 = (uint16_t)((50 + ((16 * duty100 * pwm_diff2) / t_diff2)) / 100);

	fan_table.TempMin = FUNC2((50 + hwmgr->
			thermal_controller.advanceFanControlParameters.usTMin) / 100);
	fan_table.TempMed = FUNC2((50 + hwmgr->
			thermal_controller.advanceFanControlParameters.usTMed) / 100);
	fan_table.TempMax = FUNC2((50 + hwmgr->
			thermal_controller.advanceFanControlParameters.usTMax) / 100);

	fan_table.Slope1 = FUNC2(slope1);
	fan_table.Slope2 = FUNC2(slope2);

	fan_table.FdoMin = FUNC2(fdo_min);

	fan_table.HystDown = FUNC2(hwmgr->
			thermal_controller.advanceFanControlParameters.ucTHyst);

	fan_table.HystUp = FUNC2(1);

	fan_table.HystSlope = FUNC2(1);

	fan_table.TempRespLim = FUNC2(5);

	reference_clock = FUNC1((struct amdgpu_device *)hwmgr->adev);

	fan_table.RefreshPeriod = FUNC3((hwmgr->
			thermal_controller.advanceFanControlParameters.ulCycleDelay *
			reference_clock) / 1600);

	fan_table.FdoMax = FUNC2((uint16_t)duty100);

	fan_table.TempSrc = (uint8_t)FUNC0(
			hwmgr->device, CGS_IND_REG__SMC,
			CG_MULT_THERMAL_CTRL, TEMP_SEL);

	res = FUNC6(hwmgr, smu_data->smu7_data.fan_table_start,
			(uint8_t *)&fan_table, (uint32_t)sizeof(fan_table),
			SMC_RAM_END);

	if (!res && hwmgr->thermal_controller.
			advanceFanControlParameters.ucMinimumPWMLimit)
		res = FUNC7(hwmgr,
				PPSMC_MSG_SetFanMinPwm,
				hwmgr->thermal_controller.
				advanceFanControlParameters.ucMinimumPWMLimit);

	if (!res && hwmgr->thermal_controller.
			advanceFanControlParameters.ulMinFanSCLKAcousticLimit)
		res = FUNC7(hwmgr,
				PPSMC_MSG_SetFanSclkTarget,
				hwmgr->thermal_controller.
				advanceFanControlParameters.ulMinFanSCLKAcousticLimit);

	if (res)
		FUNC5(hwmgr->platform_descriptor.platformCaps,
				PHM_PlatformCaps_MicrocodeFanControl);

	return 0;
}