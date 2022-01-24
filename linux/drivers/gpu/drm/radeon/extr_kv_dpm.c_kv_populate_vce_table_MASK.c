#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  size_t u32 ;
struct radeon_vce_clock_voltage_dependency_table {scalar_t__ count; TYPE_4__* entries; } ;
struct TYPE_6__ {struct radeon_vce_clock_voltage_dependency_table vce_clock_voltage_dependency_table; } ;
struct TYPE_7__ {TYPE_1__ dyn_state; } ;
struct TYPE_8__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct kv_power_info {scalar_t__ high_voltage_t; int vce_interval; int /*<<< orphan*/  sram_end; TYPE_5__* vce_level; scalar_t__ dpm_table_start; scalar_t__ vce_level_count; } ;
struct atom_clock_dividers {int /*<<< orphan*/  post_div; } ;
struct TYPE_10__ {void* Divider; void* ClkBypassCntl; int /*<<< orphan*/  MinVoltage; int /*<<< orphan*/  Frequency; } ;
struct TYPE_9__ {scalar_t__ v; int /*<<< orphan*/  evclk; } ;
typedef  int /*<<< orphan*/  SMU7_Fusion_ExtClkLevel ;

/* Variables and functions */
 int /*<<< orphan*/  COMPUTE_ENGINE_PLL_PARAM ; 
 int /*<<< orphan*/  SMU7_Fusion_DpmTable ; 
 int SMU7_MAX_LEVELS_VCE ; 
 int /*<<< orphan*/  VCEInterval ; 
 int /*<<< orphan*/  VceLevel ; 
 int /*<<< orphan*/  VceLevelCount ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct radeon_device*,scalar_t__,void**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 struct kv_power_info* FUNC4 (struct radeon_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct atom_clock_dividers*) ; 

__attribute__((used)) static int FUNC7(struct radeon_device *rdev)
{
	struct kv_power_info *pi = FUNC4(rdev);
	int ret;
	u32 i;
	struct radeon_vce_clock_voltage_dependency_table *table =
		&rdev->pm.dpm.dyn_state.vce_clock_voltage_dependency_table;
	struct atom_clock_dividers dividers;

	if (table == NULL || table->count == 0)
		return 0;

	pi->vce_level_count = 0;
	for (i = 0; i < table->count; i++) {
		if (pi->high_voltage_t &&
		    pi->high_voltage_t < table->entries[i].v)
			break;

		pi->vce_level[i].Frequency = FUNC1(table->entries[i].evclk);
		pi->vce_level[i].MinVoltage = FUNC0(table->entries[i].v);

		pi->vce_level[i].ClkBypassCntl =
			(u8)FUNC3(rdev, table->entries[i].evclk);

		ret = FUNC6(rdev, COMPUTE_ENGINE_PLL_PARAM,
						     table->entries[i].evclk, false, &dividers);
		if (ret)
			return ret;
		pi->vce_level[i].Divider = (u8)dividers.post_div;

		pi->vce_level_count++;
	}

	ret = FUNC2(rdev,
				   pi->dpm_table_start +
				   FUNC5(SMU7_Fusion_DpmTable, VceLevelCount),
				   (u8 *)&pi->vce_level_count,
				   sizeof(u8),
				   pi->sram_end);
	if (ret)
		return ret;

	pi->vce_interval = 1;

	ret = FUNC2(rdev,
				   pi->dpm_table_start +
				   FUNC5(SMU7_Fusion_DpmTable, VCEInterval),
				   (u8 *)&pi->vce_interval,
				   sizeof(u8),
				   pi->sram_end);
	if (ret)
		return ret;

	ret = FUNC2(rdev,
				   pi->dpm_table_start +
				   FUNC5(SMU7_Fusion_DpmTable, VceLevel),
				   (u8 *)&pi->vce_level,
				   sizeof(SMU7_Fusion_ExtClkLevel) * SMU7_MAX_LEVELS_VCE,
				   pi->sram_end);

	return ret;
}