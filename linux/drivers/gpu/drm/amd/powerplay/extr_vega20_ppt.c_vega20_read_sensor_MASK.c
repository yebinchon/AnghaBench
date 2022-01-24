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
typedef  int uint32_t ;
struct smu_table_context {TYPE_1__* driver_pptable; } ;
struct smu_context {int /*<<< orphan*/  sensor_lock; struct smu_table_context smu_table; } ;
typedef  enum amd_pp_sensors { ____Placeholder_amd_pp_sensors } amd_pp_sensors ;
struct TYPE_2__ {int FanMaximumRpm; } ;
typedef  TYPE_1__ PPTable_t ;

/* Variables and functions */
#define  AMDGPU_PP_SENSOR_EDGE_TEMP 134 
#define  AMDGPU_PP_SENSOR_GPU_LOAD 133 
#define  AMDGPU_PP_SENSOR_GPU_POWER 132 
#define  AMDGPU_PP_SENSOR_HOTSPOT_TEMP 131 
#define  AMDGPU_PP_SENSOR_MAX_FAN_RPM 130 
#define  AMDGPU_PP_SENSOR_MEM_LOAD 129 
#define  AMDGPU_PP_SENSOR_MEM_TEMP 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct smu_context*,int,void*,int*) ; 
 int FUNC3 (struct smu_context*,int,int*) ; 
 int FUNC4 (struct smu_context*,int*) ; 
 int FUNC5 (struct smu_context*,int,int*) ; 

__attribute__((used)) static int FUNC6(struct smu_context *smu,
				 enum amd_pp_sensors sensor,
				 void *data, uint32_t *size)
{
	int ret = 0;
	struct smu_table_context *table_context = &smu->smu_table;
	PPTable_t *pptable = table_context->driver_pptable;

	if(!data || !size)
		return -EINVAL;

	FUNC0(&smu->sensor_lock);
	switch (sensor) {
	case AMDGPU_PP_SENSOR_MAX_FAN_RPM:
		*(uint32_t *)data = pptable->FanMaximumRpm;
		*size = 4;
		break;
	case AMDGPU_PP_SENSOR_MEM_LOAD:
	case AMDGPU_PP_SENSOR_GPU_LOAD:
		ret = FUNC3(smu,
						sensor,
						(uint32_t *)data);
		*size = 4;
		break;
	case AMDGPU_PP_SENSOR_GPU_POWER:
		ret = FUNC4(smu, (uint32_t *)data);
		*size = 4;
		break;
	case AMDGPU_PP_SENSOR_HOTSPOT_TEMP:
	case AMDGPU_PP_SENSOR_EDGE_TEMP:
	case AMDGPU_PP_SENSOR_MEM_TEMP:
		ret = FUNC5(smu, sensor, (uint32_t *)data);
		*size = 4;
		break;
	default:
		ret = FUNC2(smu, sensor, data, size);
	}
	FUNC1(&smu->sensor_lock);

	return ret;
}