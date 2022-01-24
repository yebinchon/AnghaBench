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
struct TYPE_3__ {int ucTachometerPulsesPerRevolution; } ;
struct TYPE_4__ {TYPE_1__ fanInfo; } ;
struct pp_hwmgr {TYPE_2__ thermal_controller; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_FDO_CTRL2 ; 
 int /*<<< orphan*/  CG_TACH_CTRL ; 
 int /*<<< orphan*/  EDGE_PER_REV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TACH_PWM_RESP_RATE ; 
 int /*<<< orphan*/  THM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCG_FDO_CTRL2 ; 
 int /*<<< orphan*/  mmCG_TACH_CTRL ; 

__attribute__((used)) static int FUNC3(struct pp_hwmgr *hwmgr)
{
	struct amdgpu_device *adev = hwmgr->adev;

	if (hwmgr->thermal_controller.fanInfo.ucTachometerPulsesPerRevolution) {
		FUNC2(THM, 0, mmCG_TACH_CTRL,
			FUNC0(FUNC1(THM, 0, mmCG_TACH_CTRL),
				CG_TACH_CTRL, EDGE_PER_REV,
				hwmgr->thermal_controller.fanInfo.ucTachometerPulsesPerRevolution - 1));
	}

	FUNC2(THM, 0, mmCG_FDO_CTRL2,
		FUNC0(FUNC1(THM, 0, mmCG_FDO_CTRL2),
			CG_FDO_CTRL2, TACH_PWM_RESP_RATE, 0x28));

	return 0;
}