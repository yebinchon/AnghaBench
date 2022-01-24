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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct vega20_hwmgr {int /*<<< orphan*/  vce_power_gated; int /*<<< orphan*/  uvd_power_gated; } ;
struct pp_hwmgr {struct amdgpu_device* adev; scalar_t__ backend; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_3__ {int AverageGfxclkFrequency; int TemperatureEdge; int TemperatureHBM; } ;
typedef  TYPE_1__ SmuMetrics_t ;

/* Variables and functions */
#define  AMDGPU_PP_SENSOR_EDGE_TEMP 139 
#define  AMDGPU_PP_SENSOR_ENABLED_SMC_FEATURES_MASK 138 
#define  AMDGPU_PP_SENSOR_GFX_MCLK 137 
#define  AMDGPU_PP_SENSOR_GFX_SCLK 136 
#define  AMDGPU_PP_SENSOR_GPU_LOAD 135 
#define  AMDGPU_PP_SENSOR_GPU_POWER 134 
#define  AMDGPU_PP_SENSOR_HOTSPOT_TEMP 133 
#define  AMDGPU_PP_SENSOR_MEM_LOAD 132 
#define  AMDGPU_PP_SENSOR_MEM_TEMP 131 
#define  AMDGPU_PP_SENSOR_UVD_POWER 130 
#define  AMDGPU_PP_SENSOR_VCE_POWER 129 
#define  AMDGPU_PP_SENSOR_VDDGFX 128 
 int EINVAL ; 
 int /*<<< orphan*/  PPCLK_UCLK ; 
 int PP_TEMPERATURE_UNITS_PER_CENTIGRADES ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMUIO ; 
 int SMUSVI0_TEL_PLANE0__SVI0_PLANE0_VDDCOR_MASK ; 
 int SMUSVI0_TEL_PLANE0__SVI0_PLANE0_VDDCOR__SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSMUSVI0_TEL_PLANE0 ; 
 int FUNC2 (struct pp_hwmgr*,int,int*) ; 
 int FUNC3 (struct pp_hwmgr*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct pp_hwmgr*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct pp_hwmgr*,int*) ; 
 int FUNC6 (struct pp_hwmgr*,TYPE_1__*) ; 
 int FUNC7 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC8(struct pp_hwmgr *hwmgr, int idx,
			      void *value, int *size)
{
	struct vega20_hwmgr *data = (struct vega20_hwmgr *)(hwmgr->backend);
	struct amdgpu_device *adev = hwmgr->adev;
	SmuMetrics_t metrics_table;
	uint32_t val_vid;
	int ret = 0;

	switch (idx) {
	case AMDGPU_PP_SENSOR_GFX_SCLK:
		ret = FUNC6(hwmgr, &metrics_table);
		if (ret)
			return ret;

		*((uint32_t *)value) = metrics_table.AverageGfxclkFrequency * 100;
		*size = 4;
		break;
	case AMDGPU_PP_SENSOR_GFX_MCLK:
		ret = FUNC3(hwmgr,
				PPCLK_UCLK,
				(uint32_t *)value);
		if (!ret)
			*size = 4;
		break;
	case AMDGPU_PP_SENSOR_GPU_LOAD:
	case AMDGPU_PP_SENSOR_MEM_LOAD:
		ret = FUNC2(hwmgr, idx, (uint32_t *)value);
		if (!ret)
			*size = 4;
		break;
	case AMDGPU_PP_SENSOR_HOTSPOT_TEMP:
		*((uint32_t *)value) = FUNC7(hwmgr);
		*size = 4;
		break;
	case AMDGPU_PP_SENSOR_EDGE_TEMP:
		ret = FUNC6(hwmgr, &metrics_table);
		if (ret)
			return ret;

		*((uint32_t *)value) = metrics_table.TemperatureEdge *
			PP_TEMPERATURE_UNITS_PER_CENTIGRADES;
		*size = 4;
		break;
	case AMDGPU_PP_SENSOR_MEM_TEMP:
		ret = FUNC6(hwmgr, &metrics_table);
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
		*size = 16;
		ret = FUNC5(hwmgr, (uint32_t *)value);
		break;
	case AMDGPU_PP_SENSOR_VDDGFX:
		val_vid = (FUNC0(SMUIO, 0, mmSMUSVI0_TEL_PLANE0) &
			SMUSVI0_TEL_PLANE0__SVI0_PLANE0_VDDCOR_MASK) >>
			SMUSVI0_TEL_PLANE0__SVI0_PLANE0_VDDCOR__SHIFT;
		*((uint32_t *)value) =
			(uint32_t)FUNC1((uint8_t)val_vid);
		break;
	case AMDGPU_PP_SENSOR_ENABLED_SMC_FEATURES_MASK:
		ret = FUNC4(hwmgr, (uint64_t *)value);
		if (!ret)
			*size = 8;
		break;
	default:
		ret = -EINVAL;
		break;
	}
	return ret;
}