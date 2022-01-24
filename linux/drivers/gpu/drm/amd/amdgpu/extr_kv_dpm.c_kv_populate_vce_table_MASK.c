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
struct kv_power_info {scalar_t__ high_voltage_t; int vce_interval; int /*<<< orphan*/  sram_end; TYPE_5__* vce_level; scalar_t__ dpm_table_start; scalar_t__ vce_level_count; } ;
struct atom_clock_dividers {int /*<<< orphan*/  post_div; } ;
struct amdgpu_vce_clock_voltage_dependency_table {scalar_t__ count; TYPE_4__* entries; } ;
struct TYPE_6__ {struct amdgpu_vce_clock_voltage_dependency_table vce_clock_voltage_dependency_table; } ;
struct TYPE_7__ {TYPE_1__ dyn_state; } ;
struct TYPE_8__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;
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
 int FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct atom_clock_dividers*) ; 
 int FUNC1 (struct amdgpu_device*,scalar_t__,void**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 struct kv_power_info* FUNC5 (struct amdgpu_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_device *adev)
{
	struct kv_power_info *pi = FUNC5(adev);
	int ret;
	u32 i;
	struct amdgpu_vce_clock_voltage_dependency_table *table =
		&adev->pm.dpm.dyn_state.vce_clock_voltage_dependency_table;
	struct atom_clock_dividers dividers;

	if (table == NULL || table->count == 0)
		return 0;

	pi->vce_level_count = 0;
	for (i = 0; i < table->count; i++) {
		if (pi->high_voltage_t &&
		    pi->high_voltage_t < table->entries[i].v)
			break;

		pi->vce_level[i].Frequency = FUNC3(table->entries[i].evclk);
		pi->vce_level[i].MinVoltage = FUNC2(table->entries[i].v);

		pi->vce_level[i].ClkBypassCntl =
			(u8)FUNC4(adev, table->entries[i].evclk);

		ret = FUNC0(adev, COMPUTE_ENGINE_PLL_PARAM,
							 table->entries[i].evclk, false, &dividers);
		if (ret)
			return ret;
		pi->vce_level[i].Divider = (u8)dividers.post_div;

		pi->vce_level_count++;
	}

	ret = FUNC1(adev,
				   pi->dpm_table_start +
				   FUNC6(SMU7_Fusion_DpmTable, VceLevelCount),
				   (u8 *)&pi->vce_level_count,
				   sizeof(u8),
				   pi->sram_end);
	if (ret)
		return ret;

	pi->vce_interval = 1;

	ret = FUNC1(adev,
				   pi->dpm_table_start +
				   FUNC6(SMU7_Fusion_DpmTable, VCEInterval),
				   (u8 *)&pi->vce_interval,
				   sizeof(u8),
				   pi->sram_end);
	if (ret)
		return ret;

	ret = FUNC1(adev,
				   pi->dpm_table_start +
				   FUNC6(SMU7_Fusion_DpmTable, VceLevel),
				   (u8 *)&pi->vce_level,
				   sizeof(SMU7_Fusion_ExtClkLevel) * SMU7_MAX_LEVELS_VCE,
				   pi->sram_end);

	return ret;
}