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
struct radeon_device {int dummy; } ;
struct kv_power_info {scalar_t__ vce_power_gated; scalar_t__ uvd_power_gated; TYPE_1__* graphics_level; } ;
struct TYPE_2__ {int /*<<< orphan*/  SclkFrequency; } ;

/* Variables and functions */
 size_t CURR_SCLK_INDEX_MASK ; 
 size_t CURR_SCLK_INDEX_SHIFT ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t SMU_VOLTAGE_CURRENT_LEVEL_MASK ; 
 size_t SMU_VOLTAGE_CURRENT_LEVEL_SHIFT ; 
 int /*<<< orphan*/  SMU_VOLTAGE_STATUS ; 
 size_t SMU__NUM_SCLK_DPM_STATE ; 
 int /*<<< orphan*/  TARGET_AND_CURRENT_PROFILE_INDEX ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 struct kv_power_info* FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,...) ; 

void FUNC5(struct radeon_device *rdev,
						    struct seq_file *m)
{
	struct kv_power_info *pi = FUNC3(rdev);
	u32 current_index =
		(FUNC0(TARGET_AND_CURRENT_PROFILE_INDEX) & CURR_SCLK_INDEX_MASK) >>
		CURR_SCLK_INDEX_SHIFT;
	u32 sclk, tmp;
	u16 vddc;

	if (current_index >= SMU__NUM_SCLK_DPM_STATE) {
		FUNC4(m, "invalid dpm profile %d\n", current_index);
	} else {
		sclk = FUNC1(pi->graphics_level[current_index].SclkFrequency);
		tmp = (FUNC0(SMU_VOLTAGE_STATUS) & SMU_VOLTAGE_CURRENT_LEVEL_MASK) >>
			SMU_VOLTAGE_CURRENT_LEVEL_SHIFT;
		vddc = FUNC2(rdev, (u16)tmp);
		FUNC4(m, "uvd    %sabled\n", pi->uvd_power_gated ? "dis" : "en");
		FUNC4(m, "vce    %sabled\n", pi->vce_power_gated ? "dis" : "en");
		FUNC4(m, "power level %d    sclk: %u vddc: %u\n",
			   current_index, sclk, vddc);
	}
}