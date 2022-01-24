#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  size_t u32 ;
struct radeon_device {TYPE_2__* pdev; } ;
struct TYPE_12__ {TYPE_5__* MemoryLevel; scalar_t__ MemoryDpmLevelCount; } ;
struct TYPE_11__ {int /*<<< orphan*/  mclk_dpm_enable_mask; } ;
struct TYPE_14__ {size_t count; TYPE_1__* dpm_levels; } ;
struct ci_dpm_table {TYPE_8__ mclk_table; } ;
struct ci_power_info {size_t dpm_table_start; int /*<<< orphan*/  sram_end; TYPE_4__ smc_state_table; TYPE_3__ dpm_level_enable_mask; struct ci_dpm_table dpm_table; } ;
struct TYPE_13__ {int EnabledForActivity; int /*<<< orphan*/  DisplayWatermark; int /*<<< orphan*/  ActivityLevel; int /*<<< orphan*/  MinVddcPhases; int /*<<< orphan*/  MinVddc; } ;
struct TYPE_10__ {int device; } ;
struct TYPE_9__ {scalar_t__ value; } ;
typedef  TYPE_5__ SMU7_Discrete_MemoryLevel ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MemoryLevel ; 
 int /*<<< orphan*/  PPSMC_DISPLAY_WATERMARK_HIGH ; 
 int /*<<< orphan*/  SMU7_Discrete_DpmTable ; 
 int SMU7_MAX_LEVELS_MEMORY ; 
 size_t FUNC0 (struct radeon_device*,size_t,scalar_t__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 struct ci_power_info* FUNC2 (struct radeon_device*) ; 
 size_t FUNC3 (struct radeon_device*,scalar_t__,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct radeon_device *rdev)
{
	struct ci_power_info *pi = FUNC2(rdev);
	struct ci_dpm_table *dpm_table = &pi->dpm_table;
	u32 level_array_address = pi->dpm_table_start +
		FUNC6(SMU7_Discrete_DpmTable, MemoryLevel);
	u32 level_array_size = sizeof(SMU7_Discrete_MemoryLevel) *
		SMU7_MAX_LEVELS_MEMORY;
	SMU7_Discrete_MemoryLevel *levels = pi->smc_state_table.MemoryLevel;
	u32 i, ret;

	FUNC5(levels, 0, level_array_size);

	for (i = 0; i < dpm_table->mclk_table.count; i++) {
		if (dpm_table->mclk_table.dpm_levels[i].value == 0)
			return -EINVAL;
		ret = FUNC3(rdev,
						      dpm_table->mclk_table.dpm_levels[i].value,
						      &pi->smc_state_table.MemoryLevel[i]);
		if (ret)
			return ret;
	}

	pi->smc_state_table.MemoryLevel[0].EnabledForActivity = 1;

	if ((dpm_table->mclk_table.count >= 2) &&
	    ((rdev->pdev->device == 0x67B0) || (rdev->pdev->device == 0x67B1))) {
		pi->smc_state_table.MemoryLevel[1].MinVddc =
			pi->smc_state_table.MemoryLevel[0].MinVddc;
		pi->smc_state_table.MemoryLevel[1].MinVddcPhases =
			pi->smc_state_table.MemoryLevel[0].MinVddcPhases;
	}

	pi->smc_state_table.MemoryLevel[0].ActivityLevel = FUNC4(0x1F);

	pi->smc_state_table.MemoryDpmLevelCount = (u8)dpm_table->mclk_table.count;
	pi->dpm_level_enable_mask.mclk_dpm_enable_mask =
		FUNC1(&dpm_table->mclk_table);

	pi->smc_state_table.MemoryLevel[dpm_table->mclk_table.count - 1].DisplayWatermark =
		PPSMC_DISPLAY_WATERMARK_HIGH;

	ret = FUNC0(rdev, level_array_address,
				   (u8 *)levels, level_array_size,
				   pi->sram_end);
	if (ret)
		return ret;

	return 0;
}