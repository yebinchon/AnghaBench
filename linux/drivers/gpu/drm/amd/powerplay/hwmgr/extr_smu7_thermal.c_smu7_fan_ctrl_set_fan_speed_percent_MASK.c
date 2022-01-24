#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_3__ {scalar_t__ bNoFan; } ;
struct TYPE_4__ {TYPE_1__ fanInfo; } ;
struct pp_hwmgr {int /*<<< orphan*/  device; TYPE_2__ thermal_controller; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGS_IND_REG__SMC ; 
 int /*<<< orphan*/  CG_FDO_CTRL0 ; 
 int /*<<< orphan*/  CG_FDO_CTRL1 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FDO_PWM_MODE_STATIC ; 
 int /*<<< orphan*/  FDO_STATIC_DUTY ; 
 int /*<<< orphan*/  FMAX_DUTY100 ; 
 int /*<<< orphan*/  PHM_PlatformCaps_MicrocodeFanControl ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pp_hwmgr*) ; 

int FUNC6(struct pp_hwmgr *hwmgr,
		uint32_t speed)
{
	uint32_t duty100;
	uint32_t duty;
	uint64_t tmp64;

	if (hwmgr->thermal_controller.fanInfo.bNoFan)
		return 0;

	if (speed > 100)
		speed = 100;

	if (FUNC2(PHM_PlatformCaps_MicrocodeFanControl))
		FUNC5(hwmgr);

	duty100 = FUNC0(hwmgr->device, CGS_IND_REG__SMC,
			CG_FDO_CTRL1, FMAX_DUTY100);

	if (duty100 == 0)
		return -EINVAL;

	tmp64 = (uint64_t)speed * duty100;
	FUNC3(tmp64, 100);
	duty = (uint32_t)tmp64;

	FUNC1(hwmgr->device, CGS_IND_REG__SMC,
			CG_FDO_CTRL0, FDO_STATIC_DUTY, duty);

	return FUNC4(hwmgr, FDO_PWM_MODE_STATIC);
}