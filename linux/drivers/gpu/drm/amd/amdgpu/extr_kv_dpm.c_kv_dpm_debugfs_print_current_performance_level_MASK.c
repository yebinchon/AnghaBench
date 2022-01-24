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
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct seq_file {int dummy; } ;
struct kv_power_info {scalar_t__ vce_power_gated; scalar_t__ uvd_power_gated; TYPE_1__* graphics_level; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  SclkFrequency; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t SMU_VOLTAGE_STATUS__SMU_VOLTAGE_CURRENT_LEVEL_MASK ; 
 size_t SMU_VOLTAGE_STATUS__SMU_VOLTAGE_CURRENT_LEVEL__SHIFT ; 
 size_t SMU__NUM_SCLK_DPM_STATE ; 
 size_t TARGET_AND_CURRENT_PROFILE_INDEX__CURR_SCLK_INDEX_MASK ; 
 size_t TARGET_AND_CURRENT_PROFILE_INDEX__CURR_SCLK_INDEX__SHIFT ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixSMU_VOLTAGE_STATUS ; 
 int /*<<< orphan*/  ixTARGET_AND_CURRENT_PROFILE_INDEX ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 struct kv_power_info* FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,...) ; 

__attribute__((used)) static void
FUNC5(void *handle,
					       struct seq_file *m)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct kv_power_info *pi = FUNC3(adev);
	u32 current_index =
		(FUNC0(ixTARGET_AND_CURRENT_PROFILE_INDEX) &
		TARGET_AND_CURRENT_PROFILE_INDEX__CURR_SCLK_INDEX_MASK) >>
		TARGET_AND_CURRENT_PROFILE_INDEX__CURR_SCLK_INDEX__SHIFT;
	u32 sclk, tmp;
	u16 vddc;

	if (current_index >= SMU__NUM_SCLK_DPM_STATE) {
		FUNC4(m, "invalid dpm profile %d\n", current_index);
	} else {
		sclk = FUNC1(pi->graphics_level[current_index].SclkFrequency);
		tmp = (FUNC0(ixSMU_VOLTAGE_STATUS) &
			SMU_VOLTAGE_STATUS__SMU_VOLTAGE_CURRENT_LEVEL_MASK) >>
			SMU_VOLTAGE_STATUS__SMU_VOLTAGE_CURRENT_LEVEL__SHIFT;
		vddc = FUNC2(adev, (u16)tmp);
		FUNC4(m, "uvd    %sabled\n", pi->uvd_power_gated ? "dis" : "en");
		FUNC4(m, "vce    %sabled\n", pi->vce_power_gated ? "dis" : "en");
		FUNC4(m, "power level %d    sclk: %u vddc: %u\n",
			   current_index, sclk, vddc);
	}
}