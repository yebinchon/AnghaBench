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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  size_t u32 ;
struct si_ps {size_t performance_level_count; TYPE_1__* performance_levels; } ;
struct amdgpu_ps {int dummy; } ;
struct evergreen_power_info {struct amdgpu_ps current_rps; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mclk; int /*<<< orphan*/  sclk; } ;

/* Variables and functions */
#define  AMDGPU_PP_SENSOR_GFX_MCLK 130 
#define  AMDGPU_PP_SENSOR_GFX_SCLK 129 
#define  AMDGPU_PP_SENSOR_GPU_TEMP 128 
 size_t CURRENT_STATE_INDEX_MASK ; 
 size_t CURRENT_STATE_INDEX_SHIFT ; 
 int EINVAL ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_AND_CURRENT_PROFILE_INDEX ; 
 struct evergreen_power_info* FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 struct si_ps* FUNC3 (struct amdgpu_ps*) ; 

__attribute__((used)) static int FUNC4(void *handle, int idx,
			      void *value, int *size)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct evergreen_power_info *eg_pi = FUNC1(adev);
	struct amdgpu_ps *rps = &eg_pi->current_rps;
	struct  si_ps *ps = FUNC3(rps);
	uint32_t sclk, mclk;
	u32 pl_index =
		(FUNC0(TARGET_AND_CURRENT_PROFILE_INDEX) & CURRENT_STATE_INDEX_MASK) >>
		CURRENT_STATE_INDEX_SHIFT;

	/* size must be at least 4 bytes for all sensors */
	if (*size < 4)
		return -EINVAL;

	switch (idx) {
	case AMDGPU_PP_SENSOR_GFX_SCLK:
		if (pl_index < ps->performance_level_count) {
			sclk = ps->performance_levels[pl_index].sclk;
			*((uint32_t *)value) = sclk;
			*size = 4;
			return 0;
		}
		return -EINVAL;
	case AMDGPU_PP_SENSOR_GFX_MCLK:
		if (pl_index < ps->performance_level_count) {
			mclk = ps->performance_levels[pl_index].mclk;
			*((uint32_t *)value) = mclk;
			*size = 4;
			return 0;
		}
		return -EINVAL;
	case AMDGPU_PP_SENSOR_GPU_TEMP:
		*((uint32_t *)value) = FUNC2(adev);
		*size = 4;
		return 0;
	default:
		return -EINVAL;
	}
}