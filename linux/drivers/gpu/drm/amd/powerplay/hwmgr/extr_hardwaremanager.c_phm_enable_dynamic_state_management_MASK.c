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
struct pp_hwmgr {TYPE_1__* hwmgr_func; struct amdgpu_device* adev; } ;
struct amdgpu_device {scalar_t__ in_suspend; } ;
struct TYPE_2__ {int (* dynamic_state_management_enable ) (struct pp_hwmgr*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct pp_hwmgr*) ; 
 int FUNC4 (struct pp_hwmgr*) ; 

int FUNC5(struct pp_hwmgr *hwmgr)
{
	struct amdgpu_device *adev = NULL;
	int ret = -EINVAL;
	FUNC0(hwmgr);
	adev = hwmgr->adev;

	/* Skip for suspend/resume case */
	if (FUNC3(hwmgr) && !FUNC1(adev)
		&& adev->in_suspend) {
		FUNC2("dpm has been enabled\n");
		return 0;
	}

	if (NULL != hwmgr->hwmgr_func->dynamic_state_management_enable)
		ret = hwmgr->hwmgr_func->dynamic_state_management_enable(hwmgr);

	return ret;
}