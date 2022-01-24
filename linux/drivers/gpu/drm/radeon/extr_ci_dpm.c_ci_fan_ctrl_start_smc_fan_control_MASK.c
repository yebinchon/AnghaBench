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
struct TYPE_4__ {int /*<<< orphan*/  default_max_fan_pwm; } ;
struct TYPE_5__ {TYPE_1__ fan; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct ci_power_info {int fan_is_controlled_by_smc; scalar_t__ caps_od_fuzzy_fan_control_support; } ;
typedef  scalar_t__ PPSMC_Result ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FAN_CONTROL_FUZZY ; 
 int /*<<< orphan*/  FAN_CONTROL_TABLE ; 
 int /*<<< orphan*/  PPSMC_MSG_SetFanPwmMax ; 
 scalar_t__ PPSMC_Result_OK ; 
 int /*<<< orphan*/  PPSMC_StartFanControl ; 
 struct ci_power_info* FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct radeon_device *rdev)
{
	struct ci_power_info *pi = FUNC0(rdev);
	PPSMC_Result ret;

	if (pi->caps_od_fuzzy_fan_control_support) {
		ret = FUNC1(rdev,
							PPSMC_StartFanControl,
							FAN_CONTROL_FUZZY);
		if (ret != PPSMC_Result_OK)
			return -EINVAL;
		ret = FUNC1(rdev,
							PPSMC_MSG_SetFanPwmMax,
							rdev->pm.dpm.fan.default_max_fan_pwm);
		if (ret != PPSMC_Result_OK)
			return -EINVAL;
	} else {
		ret = FUNC1(rdev,
							PPSMC_StartFanControl,
							FAN_CONTROL_TABLE);
		if (ret != PPSMC_Result_OK)
			return -EINVAL;
	}

	pi->fan_is_controlled_by_smc = true;
	return 0;
}