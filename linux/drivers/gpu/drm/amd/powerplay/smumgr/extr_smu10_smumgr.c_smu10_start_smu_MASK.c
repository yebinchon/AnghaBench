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
struct pp_hwmgr {int smu_version; struct amdgpu_device* adev; } ;
struct TYPE_4__ {int fw_version; int /*<<< orphan*/  pp_feature; } ;
struct amdgpu_device {int rev_id; TYPE_2__ pm; TYPE_1__* pdev; } ;
struct TYPE_3__ {int device; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PPSMC_MSG_GetSmuVersion ; 
 int /*<<< orphan*/  PP_GFXOFF_MASK ; 
 int FUNC0 (struct pp_hwmgr*) ; 
 scalar_t__ FUNC1 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pp_hwmgr *hwmgr)
{
	struct amdgpu_device *adev = hwmgr->adev;

	FUNC2(hwmgr, PPSMC_MSG_GetSmuVersion);
	hwmgr->smu_version = FUNC0(hwmgr);
	adev->pm.fw_version = hwmgr->smu_version >> 8;

	if (adev->rev_id < 0x8 && adev->pdev->device != 0x15d8 &&
	    adev->pm.fw_version < 0x1e45)
		adev->pm.pp_feature &= ~PP_GFXOFF_MASK;

	if (FUNC1(hwmgr))
		return -EINVAL;

	return 0;
}