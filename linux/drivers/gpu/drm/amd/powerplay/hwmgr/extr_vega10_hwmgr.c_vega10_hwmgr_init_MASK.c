#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pp_hwmgr {int /*<<< orphan*/ * pptable_func; int /*<<< orphan*/ * hwmgr_func; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct amdgpu_device*) ; 
 int FUNC1 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  vega10_hwmgr_funcs ; 
 int /*<<< orphan*/  vega10_pptable_funcs ; 

int FUNC2(struct pp_hwmgr *hwmgr)
{
	struct amdgpu_device *adev = hwmgr->adev;

	hwmgr->hwmgr_func = &vega10_hwmgr_funcs;
	hwmgr->pptable_func = &vega10_pptable_funcs;
	if (FUNC0(adev))
		return FUNC1(hwmgr);

	return 0;
}