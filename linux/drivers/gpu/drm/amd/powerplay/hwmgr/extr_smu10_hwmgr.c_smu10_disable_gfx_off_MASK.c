#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct TYPE_2__ {int pp_feature; } ;
struct amdgpu_device {TYPE_1__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_DisableGfxOff ; 
 int PP_GFXOFF_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pp_hwmgr *hwmgr)
{
	struct amdgpu_device *adev = hwmgr->adev;

	if (adev->pm.pp_feature & PP_GFXOFF_MASK) {
		FUNC2(hwmgr, PPSMC_MSG_DisableGfxOff);

		/* confirm gfx is back to "on" state */
		while (!FUNC1(hwmgr))
			FUNC0(1);
	}

	return 0;
}