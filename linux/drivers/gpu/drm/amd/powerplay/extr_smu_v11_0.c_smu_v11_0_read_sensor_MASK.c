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
typedef  int uint32_t ;
struct smu_context {int dummy; } ;
typedef  enum amd_pp_sensors { ____Placeholder_amd_pp_sensors } amd_pp_sensors ;

/* Variables and functions */
#define  AMDGPU_PP_SENSOR_GFX_MCLK 131 
#define  AMDGPU_PP_SENSOR_GFX_SCLK 130 
#define  AMDGPU_PP_SENSOR_MIN_FAN_RPM 129 
#define  AMDGPU_PP_SENSOR_VDDGFX 128 
 int EINVAL ; 
 int /*<<< orphan*/  SMU_GFXCLK ; 
 int /*<<< orphan*/  SMU_UCLK ; 
 int FUNC0 (struct smu_context*,int,void*,int*) ; 
 int FUNC1 (struct smu_context*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct smu_context*,int*) ; 

__attribute__((used)) static int FUNC3(struct smu_context *smu,
				 enum amd_pp_sensors sensor,
				 void *data, uint32_t *size)
{
	int ret = 0;

	if(!data || !size)
		return -EINVAL;

	switch (sensor) {
	case AMDGPU_PP_SENSOR_GFX_MCLK:
		ret = FUNC1(smu, SMU_UCLK, (uint32_t *)data);
		*size = 4;
		break;
	case AMDGPU_PP_SENSOR_GFX_SCLK:
		ret = FUNC1(smu, SMU_GFXCLK, (uint32_t *)data);
		*size = 4;
		break;
	case AMDGPU_PP_SENSOR_VDDGFX:
		ret = FUNC2(smu, (uint32_t *)data);
		*size = 4;
		break;
	case AMDGPU_PP_SENSOR_MIN_FAN_RPM:
		*(uint32_t *)data = 0;
		*size = 4;
		break;
	default:
		ret = FUNC0(smu, sensor, data, size);
		break;
	}

	if (ret)
		*size = 0;

	return ret;
}