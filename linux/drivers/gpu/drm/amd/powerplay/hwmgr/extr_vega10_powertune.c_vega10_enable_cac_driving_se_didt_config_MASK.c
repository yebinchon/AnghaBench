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
typedef  int uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct TYPE_3__ {int max_shader_engines; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct amdgpu_device {int /*<<< orphan*/  grbm_idx_mutex; TYPE_2__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GC ; 
 int GRBM_GFX_INDEX__INSTANCE_BROADCAST_WRITES_MASK ; 
 int GRBM_GFX_INDEX__SE_INDEX__SHIFT ; 
 int GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK ; 
 int /*<<< orphan*/  SEDiDtCtrl0Config_Vega10 ; 
 int /*<<< orphan*/  SEDiDtCtrl1Config_Vega10 ; 
 int /*<<< orphan*/  SEDiDtCtrl2Config_Vega10 ; 
 int /*<<< orphan*/  SEDiDtCtrl3Config_vega10 ; 
 int /*<<< orphan*/  SEDiDtStallCtrlConfig_vega10 ; 
 int /*<<< orphan*/  SEDiDtStallPatternConfig_vega10 ; 
 int /*<<< orphan*/  SEDiDtTuningCtrlConfig_Vega10 ; 
 int /*<<< orphan*/  SEDiDtWeightConfig_Vega10 ; 
 int /*<<< orphan*/  SELCacConfig_Vega10 ; 
 int /*<<< orphan*/  VEGA10_CONFIGREG_DIDT ; 
 int /*<<< orphan*/  VEGA10_CONFIGREG_SECAC ; 
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
	uint32_t num_se = 0, count, data;

	num_se = adev->gfx.config.max_shader_engines;

	FUNC1(adev);

	FUNC3(&adev->grbm_idx_mutex);
	for (count = 0; count < num_se; count++) {
		data = GRBM_GFX_INDEX__INSTANCE_BROADCAST_WRITES_MASK | GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK | ( count << GRBM_GFX_INDEX__SE_INDEX__SHIFT);
		FUNC0(GC, 0, mmGRBM_GFX_INDEX, data);

		result =  FUNC6(hwmgr, SEDiDtStallCtrlConfig_vega10, VEGA10_CONFIGREG_DIDT);
		result |= FUNC6(hwmgr, SEDiDtStallPatternConfig_vega10, VEGA10_CONFIGREG_DIDT);
		result |= FUNC6(hwmgr, SEDiDtWeightConfig_Vega10, VEGA10_CONFIGREG_DIDT);
		result |= FUNC6(hwmgr, SEDiDtCtrl1Config_Vega10, VEGA10_CONFIGREG_DIDT);
		result |= FUNC6(hwmgr, SEDiDtCtrl2Config_Vega10, VEGA10_CONFIGREG_DIDT);
		result |= FUNC6(hwmgr, SEDiDtCtrl3Config_vega10, VEGA10_CONFIGREG_DIDT);
		result |= FUNC6(hwmgr, SEDiDtTuningCtrlConfig_Vega10, VEGA10_CONFIGREG_DIDT);
		result |= FUNC6(hwmgr, SELCacConfig_Vega10, VEGA10_CONFIGREG_SECAC);
		result |= FUNC6(hwmgr, SEDiDtCtrl0Config_Vega10, VEGA10_CONFIGREG_DIDT);

		if (0 != result)
			break;
	}
	FUNC0(GC, 0, mmGRBM_GFX_INDEX, 0xE0000000);
	FUNC4(&adev->grbm_idx_mutex);

	FUNC5(hwmgr, true);

	FUNC2(adev);

	return 0;
}