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
struct smu_table {void* cpu_addr; } ;
struct TYPE_2__ {struct smu_table* tables; } ;
struct smu_context {int /*<<< orphan*/  watermarks_bitmap; int /*<<< orphan*/  disable_watermark; TYPE_1__ smu_table; } ;
struct dm_pp_wm_sets_with_clock_ranges_soc15 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMU_FEATURE_DPM_DCEFCLK_BIT ; 
 int /*<<< orphan*/  SMU_FEATURE_DPM_SOCCLK_BIT ; 
 size_t SMU_TABLE_WATERMARKS ; 
 int /*<<< orphan*/  WATERMARKS_EXIST ; 
 int /*<<< orphan*/  WATERMARKS_LOADED ; 
 scalar_t__ FUNC0 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smu_context*,void*,struct dm_pp_wm_sets_with_clock_ranges_soc15*) ; 

__attribute__((used)) static int
FUNC2(struct smu_context *smu, struct
					  dm_pp_wm_sets_with_clock_ranges_soc15
					  *clock_ranges)
{
	int ret = 0;
	struct smu_table *watermarks = &smu->smu_table.tables[SMU_TABLE_WATERMARKS];
	void *table = watermarks->cpu_addr;

	if (!smu->disable_watermark &&
	    FUNC0(smu, SMU_FEATURE_DPM_DCEFCLK_BIT) &&
	    FUNC0(smu, SMU_FEATURE_DPM_SOCCLK_BIT)) {
		FUNC1(smu, table, clock_ranges);
		smu->watermarks_bitmap |= WATERMARKS_EXIST;
		smu->watermarks_bitmap &= ~WATERMARKS_LOADED;
	}

	return ret;
}