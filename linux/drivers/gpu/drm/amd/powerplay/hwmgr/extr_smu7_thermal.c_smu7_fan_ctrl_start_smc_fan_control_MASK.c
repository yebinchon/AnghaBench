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
struct TYPE_5__ {scalar_t__ ucTargetTemperature; int /*<<< orphan*/  usMaxFanPWM; int /*<<< orphan*/  usMaxFanRPM; } ;
struct TYPE_6__ {TYPE_2__ advanceFanControlParameters; } ;
struct pp_hwmgr {int fan_ctrl_enabled; TYPE_3__ thermal_controller; int /*<<< orphan*/  device; TYPE_1__* hwmgr_func; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_max_fan_pwm_output ) (struct pp_hwmgr*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_max_fan_rpm_output ) (struct pp_hwmgr*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FAN_CONTROL_FUZZY ; 
 int /*<<< orphan*/  FAN_CONTROL_TABLE ; 
 int /*<<< orphan*/  PHM_PlatformCaps_FanSpeedInTableIsRPM ; 
 int /*<<< orphan*/  PHM_PlatformCaps_ODFuzzyFanControlSupport ; 
 int /*<<< orphan*/  PPSMC_MSG_SetFanTemperatureTarget ; 
 int /*<<< orphan*/  PPSMC_StartFanControl ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSMC_MSG_ARG_0 ; 
 int FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pp_hwmgr*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 

int FUNC6(struct pp_hwmgr *hwmgr)
{
	int result;

	if (FUNC0(PHM_PlatformCaps_ODFuzzyFanControlSupport)) {
		FUNC1(hwmgr->device, mmSMC_MSG_ARG_0, FAN_CONTROL_FUZZY);
		result = FUNC2(hwmgr, PPSMC_StartFanControl);

		if (FUNC0(PHM_PlatformCaps_FanSpeedInTableIsRPM))
			hwmgr->hwmgr_func->set_max_fan_rpm_output(hwmgr,
					hwmgr->thermal_controller.
					advanceFanControlParameters.usMaxFanRPM);
		else
			hwmgr->hwmgr_func->set_max_fan_pwm_output(hwmgr,
					hwmgr->thermal_controller.
					advanceFanControlParameters.usMaxFanPWM);

	} else {
		FUNC1(hwmgr->device, mmSMC_MSG_ARG_0, FAN_CONTROL_TABLE);
		result = FUNC2(hwmgr, PPSMC_StartFanControl);
	}

	if (!result && hwmgr->thermal_controller.
			advanceFanControlParameters.ucTargetTemperature)
		result = FUNC3(hwmgr,
				PPSMC_MSG_SetFanTemperatureTarget,
				hwmgr->thermal_controller.
				advanceFanControlParameters.ucTargetTemperature);
	hwmgr->fan_ctrl_enabled = true;

	return result;
}