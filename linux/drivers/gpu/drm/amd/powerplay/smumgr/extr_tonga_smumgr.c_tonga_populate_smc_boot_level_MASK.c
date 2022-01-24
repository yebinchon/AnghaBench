#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {scalar_t__ MemoryBootLevel; scalar_t__ GraphicsBootLevel; } ;
struct tonga_smumgr {TYPE_2__ smc_state_table; } ;
struct TYPE_10__ {int /*<<< orphan*/  mvdd_bootup_value; int /*<<< orphan*/  vddci_bootup_value; int /*<<< orphan*/  vddgfx_bootup_value; int /*<<< orphan*/  vddc_bootup_value; int /*<<< orphan*/  mclk_bootup_value; int /*<<< orphan*/  sclk_bootup_value; } ;
struct TYPE_7__ {int /*<<< orphan*/  mclk_table; int /*<<< orphan*/  sclk_table; } ;
struct smu7_hwmgr {TYPE_4__ vbios_boot_state; int /*<<< orphan*/  vddci_voltage_table; int /*<<< orphan*/  vddgfx_voltage_table; int /*<<< orphan*/  vddc_voltage_table; TYPE_1__ dpm_table; } ;
struct pp_hwmgr {scalar_t__ smu_backend; scalar_t__ backend; } ;
struct TYPE_9__ {void* Vddci; void* VddGfx; void* Vddc; } ;
struct TYPE_11__ {int /*<<< orphan*/  BootMVdd; TYPE_3__ BootVoltage; scalar_t__ MemoryBootLevel; scalar_t__ GraphicsBootLevel; } ;
typedef  TYPE_5__ SMU72_Discrete_DpmTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct pp_hwmgr *hwmgr,
			SMU72_Discrete_DpmTable *table)
{
	int result = 0;
	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
	struct tonga_smumgr *smu_data =
				(struct tonga_smumgr *)(hwmgr->smu_backend);
	table->GraphicsBootLevel = 0;
	table->MemoryBootLevel = 0;

	/* find boot level from dpm table*/
	result = FUNC1(&(data->dpm_table.sclk_table),
	data->vbios_boot_state.sclk_bootup_value,
	(uint32_t *)&(smu_data->smc_state_table.GraphicsBootLevel));

	if (result != 0) {
		smu_data->smc_state_table.GraphicsBootLevel = 0;
		FUNC3("[powerplay] VBIOS did not find boot engine "
				"clock value in dependency table. "
				"Using Graphics DPM level 0 !");
		result = 0;
	}

	result = FUNC1(&(data->dpm_table.mclk_table),
		data->vbios_boot_state.mclk_bootup_value,
		(uint32_t *)&(smu_data->smc_state_table.MemoryBootLevel));

	if (result != 0) {
		smu_data->smc_state_table.MemoryBootLevel = 0;
		FUNC3("[powerplay] VBIOS did not find boot "
				"engine clock value in dependency table."
				"Using Memory DPM level 0 !");
		result = 0;
	}

	table->BootVoltage.Vddc =
		FUNC2(&(data->vddc_voltage_table),
			data->vbios_boot_state.vddc_bootup_value);
	table->BootVoltage.VddGfx =
		FUNC2(&(data->vddgfx_voltage_table),
			data->vbios_boot_state.vddgfx_bootup_value);
	table->BootVoltage.Vddci =
		FUNC2(&(data->vddci_voltage_table),
			data->vbios_boot_state.vddci_bootup_value);
	table->BootMVdd = data->vbios_boot_state.mvdd_bootup_value;

	FUNC0(table->BootMVdd);

	return result;
}