#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct vega12_hwmgr {int /*<<< orphan*/  vce_power_gated; int /*<<< orphan*/  uvd_power_gated; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct TYPE_3__ {int TemperatureHotspot; int TemperatureHBM; } ;
typedef  TYPE_1__ SmuMetrics_t ;

/* Variables and functions */
#define  AMDGPU_PP_SENSOR_ENABLED_SMC_FEATURES_MASK 138 
#define  AMDGPU_PP_SENSOR_GFX_MCLK 137 
#define  AMDGPU_PP_SENSOR_GFX_SCLK 136 
#define  AMDGPU_PP_SENSOR_GPU_LOAD 135 
#define  AMDGPU_PP_SENSOR_GPU_POWER 134 
#define  AMDGPU_PP_SENSOR_GPU_TEMP 133 
#define  AMDGPU_PP_SENSOR_HOTSPOT_TEMP 132 
#define  AMDGPU_PP_SENSOR_MEM_LOAD 131 
#define  AMDGPU_PP_SENSOR_MEM_TEMP 130 
#define  AMDGPU_PP_SENSOR_UVD_POWER 129 
#define  AMDGPU_PP_SENSOR_VCE_POWER 128 
 int EINVAL ; 
 int PP_TEMPERATURE_UNITS_PER_CENTIGRADES ; 
 int FUNC0 (struct pp_hwmgr*,int,int*) ; 
 int FUNC1 (struct pp_hwmgr*,int*) ; 
 int FUNC2 (struct pp_hwmgr*,int*) ; 
 int FUNC3 (struct pp_hwmgr*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pp_hwmgr*,int*) ; 
 int FUNC5 (struct pp_hwmgr*,TYPE_1__*) ; 
 int FUNC6 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC7(struct pp_hwmgr *hwmgr, int idx,
			      void *value, int *size)
{
	struct vega12_hwmgr *data = (struct vega12_hwmgr *)(hwmgr->backend);
	SmuMetrics_t metrics_table;
	int ret = 0;

	switch (idx) {
	case AMDGPU_PP_SENSOR_GFX_SCLK:
		ret = FUNC1(hwmgr, (uint32_t *)value);
		if (!ret)
			*size = 4;
		break;
	case AMDGPU_PP_SENSOR_GFX_MCLK:
		ret = FUNC2(hwmgr, (uint32_t *)value);
		if (!ret)
			*size = 4;
		break;
	case AMDGPU_PP_SENSOR_GPU_LOAD:
	case AMDGPU_PP_SENSOR_MEM_LOAD:
		ret = FUNC0(hwmgr, idx, (uint32_t *)value);
		if (!ret)
			*size = 4;
		break;
	case AMDGPU_PP_SENSOR_GPU_TEMP:
		*((uint32_t *)value) = FUNC6(hwmgr);
		*size = 4;
		break;
	case AMDGPU_PP_SENSOR_HOTSPOT_TEMP:
		ret = FUNC5(hwmgr, &metrics_table);
		if (ret)
			return ret;

		*((uint32_t *)value) = metrics_table.TemperatureHotspot *
			PP_TEMPERATURE_UNITS_PER_CENTIGRADES;
		*size = 4;
		break;
	case AMDGPU_PP_SENSOR_MEM_TEMP:
		ret = FUNC5(hwmgr, &metrics_table);
		if (ret)
			return ret;

		*((uint32_t *)value) = metrics_table.TemperatureHBM *
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
		ret = FUNC4(hwmgr, (uint32_t *)value);
		if (!ret)
			*size = 4;
		break;
	case AMDGPU_PP_SENSOR_ENABLED_SMC_FEATURES_MASK:
		ret = FUNC3(hwmgr, (uint64_t *)value);
		if (!ret)
			*size = 8;
		break;
	default:
		ret = -EINVAL;
		break;
	}
	return ret;
}