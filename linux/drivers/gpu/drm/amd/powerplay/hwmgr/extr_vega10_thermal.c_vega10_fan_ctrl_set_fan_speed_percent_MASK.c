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
struct pp_hwmgr {TYPE_2__ thermal_controller; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_FDO_CTRL0 ; 
 int /*<<< orphan*/  CG_FDO_CTRL1 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FDO_PWM_MODE_STATIC ; 
 int /*<<< orphan*/  FDO_STATIC_DUTY ; 
 int /*<<< orphan*/  FMAX_DUTY100 ; 
 int /*<<< orphan*/  PHM_PlatformCaps_MicrocodeFanControl ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  mmCG_FDO_CTRL0 ; 
 int /*<<< orphan*/  mmCG_FDO_CTRL1 ; 
 int FUNC6 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pp_hwmgr*) ; 

int FUNC8(struct pp_hwmgr *hwmgr,
		uint32_t speed)
{
	struct amdgpu_device *adev = hwmgr->adev;
	uint32_t duty100;
	uint32_t duty;
	uint64_t tmp64;

	if (hwmgr->thermal_controller.fanInfo.bNoFan)
		return 0;

	if (speed > 100)
		speed = 100;

	if (FUNC0(PHM_PlatformCaps_MicrocodeFanControl))
		FUNC7(hwmgr);

	duty100 = FUNC1(FUNC3(THM, 0, mmCG_FDO_CTRL1),
				    CG_FDO_CTRL1, FMAX_DUTY100);

	if (duty100 == 0)
		return -EINVAL;

	tmp64 = (uint64_t)speed * duty100;
	FUNC5(tmp64, 100);
	duty = (uint32_t)tmp64;

	FUNC4(THM, 0, mmCG_FDO_CTRL0,
		FUNC2(FUNC3(THM, 0, mmCG_FDO_CTRL0),
			CG_FDO_CTRL0, FDO_STATIC_DUTY, duty));

	return FUNC6(hwmgr, FDO_PWM_MODE_STATIC);
}