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
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int /*<<< orphan*/  grbm_idx_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  SEEDCCtrlForceStallConfig_Vega10 ; 
 int /*<<< orphan*/  SEEDCForceStallPatternConfig_Vega10 ; 
 int /*<<< orphan*/  VEGA10_CONFIGREG_DIDT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmGRBM_GFX_INDEX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pp_hwmgr*,int) ; 
 int FUNC6 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pp_hwmgr *hwmgr)
{
	struct amdgpu_device *adev = hwmgr->adev;
	int result;

	FUNC1(adev);

	FUNC3(&adev->grbm_idx_mutex);
	FUNC0(GC, 0, mmGRBM_GFX_INDEX, 0xE0000000);
	FUNC4(&adev->grbm_idx_mutex);

	result = FUNC6(hwmgr, SEEDCForceStallPatternConfig_Vega10, VEGA10_CONFIGREG_DIDT);
	result |= FUNC6(hwmgr, SEEDCCtrlForceStallConfig_Vega10, VEGA10_CONFIGREG_DIDT);
	if (0 != result)
		return result;

	FUNC5(hwmgr, false);

	FUNC2(adev);

	return 0;
}