#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct radeon_device {int dummy; } ;
struct TYPE_11__ {size_t count; TYPE_3__* dpm_levels; } ;
struct TYPE_9__ {size_t count; TYPE_1__* dpm_levels; } ;
struct TYPE_12__ {TYPE_4__ mclk_table; TYPE_2__ sclk_table; } ;
struct ci_power_info {int /*<<< orphan*/  sram_end; int /*<<< orphan*/  arb_table_start; TYPE_5__ dpm_table; } ;
struct TYPE_13__ {int /*<<< orphan*/ ** entries; } ;
struct TYPE_10__ {int /*<<< orphan*/  value; } ;
struct TYPE_8__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_6__ SMU7_Discrete_MCArbDramTimingTable ;

/* Variables and functions */
 int FUNC0 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct ci_power_info* FUNC1 (struct radeon_device*) ; 
 int FUNC2 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct radeon_device *rdev)
{
	struct ci_power_info *pi = FUNC1(rdev);
	SMU7_Discrete_MCArbDramTimingTable arb_regs;
	u32 i, j;
	int ret =  0;

	FUNC3(&arb_regs, 0, sizeof(SMU7_Discrete_MCArbDramTimingTable));

	for (i = 0; i < pi->dpm_table.sclk_table.count; i++) {
		for (j = 0; j < pi->dpm_table.mclk_table.count; j++) {
			ret = FUNC2(rdev,
								   pi->dpm_table.sclk_table.dpm_levels[i].value,
								   pi->dpm_table.mclk_table.dpm_levels[j].value,
								   &arb_regs.entries[i][j]);
			if (ret)
				break;
		}
	}

	if (ret == 0)
		ret = FUNC0(rdev,
					   pi->arb_table_start,
					   (u8 *)&arb_regs,
					   sizeof(SMU7_Discrete_MCArbDramTimingTable),
					   pi->sram_end);

	return ret;
}