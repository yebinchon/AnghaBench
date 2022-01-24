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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int count; TYPE_1__* dpm_levels; } ;
struct vega10_dpm_table {TYPE_2__ mem_table; } ;
struct vega10_hwmgr {int /*<<< orphan*/  vce_power_gated; int /*<<< orphan*/  uvd_power_gated; struct vega10_dpm_table dpm_table; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_3__ {int value; } ;

/* Variables and functions */
#define  AMDGPU_PP_SENSOR_ENABLED_SMC_FEATURES_MASK 138 
#define  AMDGPU_PP_SENSOR_GFX_MCLK 137 
#define  AMDGPU_PP_SENSOR_GFX_SCLK 136 
#define  AMDGPU_PP_SENSOR_GPU_LOAD 135 
#define  AMDGPU_PP_SENSOR_GPU_POWER 134 
#define  AMDGPU_PP_SENSOR_GPU_TEMP 133 
#define  AMDGPU_PP_SENSOR_HOTSPOT_TEMP 132 
#define  AMDGPU_PP_SENSOR_MEM_TEMP 131 
#define  AMDGPU_PP_SENSOR_UVD_POWER 130 
#define  AMDGPU_PP_SENSOR_VCE_POWER 129 
#define  AMDGPU_PP_SENSOR_VDDGFX 128 
 int EINVAL ; 
 int /*<<< orphan*/  PPSMC_MSG_GetAverageGfxActivity ; 
 int /*<<< orphan*/  PPSMC_MSG_GetAverageGfxclkActualFrequency ; 
 int /*<<< orphan*/  PPSMC_MSG_GetCurrentUclkIndex ; 
 int /*<<< orphan*/  PPSMC_MSG_GetTemperatureHBM ; 
 int /*<<< orphan*/  PPSMC_MSG_GetTemperatureHotspot ; 
 int PP_TEMPERATURE_UNITS_PER_CENTIGRADES ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMUIO ; 
 int SMUSVI0_PLANE0_CURRENTVID__CURRENT_SVI0_PLANE0_VID_MASK ; 
 int SMUSVI0_PLANE0_CURRENTVID__CURRENT_SVI0_PLANE0_VID__SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSMUSVI0_PLANE0_CURRENTVID ; 
 int FUNC2 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pp_hwmgr*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct pp_hwmgr*,int*) ; 
 int FUNC7 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC8(struct pp_hwmgr *hwmgr, int idx,
			      void *value, int *size)
{
	struct amdgpu_device *adev = hwmgr->adev;
	uint32_t sclk_mhz, mclk_idx, activity_percent = 0;
	struct vega10_hwmgr *data = hwmgr->backend;
	struct vega10_dpm_table *dpm_table = &data->dpm_table;
	int ret = 0;
	uint32_t val_vid;

	switch (idx) {
	case AMDGPU_PP_SENSOR_GFX_SCLK:
		FUNC3(hwmgr, PPSMC_MSG_GetAverageGfxclkActualFrequency);
		sclk_mhz = FUNC2(hwmgr);
		*((uint32_t *)value) = sclk_mhz * 100;
		break;
	case AMDGPU_PP_SENSOR_GFX_MCLK:
		FUNC3(hwmgr, PPSMC_MSG_GetCurrentUclkIndex);
		mclk_idx = FUNC2(hwmgr);
		if (mclk_idx < dpm_table->mem_table.count) {
			*((uint32_t *)value) = dpm_table->mem_table.dpm_levels[mclk_idx].value;
			*size = 4;
		} else {
			ret = -EINVAL;
		}
		break;
	case AMDGPU_PP_SENSOR_GPU_LOAD:
		FUNC4(hwmgr, PPSMC_MSG_GetAverageGfxActivity, 0);
		activity_percent = FUNC2(hwmgr);
		*((uint32_t *)value) = activity_percent > 100 ? 100 : activity_percent;
		*size = 4;
		break;
	case AMDGPU_PP_SENSOR_GPU_TEMP:
		*((uint32_t *)value) = FUNC7(hwmgr);
		*size = 4;
		break;
	case AMDGPU_PP_SENSOR_HOTSPOT_TEMP:
		FUNC3(hwmgr, PPSMC_MSG_GetTemperatureHotspot);
		*((uint32_t *)value) = FUNC2(hwmgr) *
			PP_TEMPERATURE_UNITS_PER_CENTIGRADES;
		*size = 4;
		break;
	case AMDGPU_PP_SENSOR_MEM_TEMP:
		FUNC3(hwmgr, PPSMC_MSG_GetTemperatureHBM);
		*((uint32_t *)value) = FUNC2(hwmgr) *
			PP_TEMPERATURE_UNITS_PER_CENTIGRADES;
		*size = 4;
		break;
	case AMDGPU_PP_SENSOR_UVD_POWER:
		*((uint32_t *)value) = data->uvd_power_gated ? 0 : 1;
		*size = 4;
		break;
	case AMDGPU_PP_SENSOR_VCE_POWER:
		*((uint32_t *)value) = data->vce_power_gated ? 0 : 1;
		*size = 4;
		break;
	case AMDGPU_PP_SENSOR_GPU_POWER:
		ret = FUNC6(hwmgr, (uint32_t *)value);
		break;
	case AMDGPU_PP_SENSOR_VDDGFX:
		val_vid = (FUNC0(SMUIO, 0, mmSMUSVI0_PLANE0_CURRENTVID) &
			SMUSVI0_PLANE0_CURRENTVID__CURRENT_SVI0_PLANE0_VID_MASK) >>
			SMUSVI0_PLANE0_CURRENTVID__CURRENT_SVI0_PLANE0_VID__SHIFT;
		*((uint32_t *)value) = (uint32_t)FUNC1((uint8_t)val_vid);
		return 0;
	case AMDGPU_PP_SENSOR_ENABLED_SMC_FEATURES_MASK:
		ret = FUNC5(hwmgr, (uint64_t *)value);
		if (!ret)
			*size = 8;
		break;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}