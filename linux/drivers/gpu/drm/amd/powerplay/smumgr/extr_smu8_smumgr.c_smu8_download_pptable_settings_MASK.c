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
struct smu8_smumgr {unsigned long scratch_buffer_length; int /*<<< orphan*/  toc_entry_clock_table; TYPE_1__* scratch_buffer; } ;
struct pp_hwmgr {struct smu8_smumgr* smu_backend; } ;
struct SMU8_Fusion_ClkTable {int dummy; } ;
struct TYPE_2__ {scalar_t__ firmware_ID; int /*<<< orphan*/  mc_addr; scalar_t__ kaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_ClkTableXferToDram ; 
 int /*<<< orphan*/  PPSMC_MSG_ExecuteJob ; 
 int /*<<< orphan*/  PPSMC_MSG_SetClkTableAddrHi ; 
 int /*<<< orphan*/  PPSMC_MSG_SetClkTableAddrLo ; 
 scalar_t__ SMU8_SCRATCH_ENTRY_SMU8_FUSION_CLKTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pp_hwmgr *hwmgr, void **table)
{
	struct smu8_smumgr *smu8_smu = hwmgr->smu_backend;
	unsigned long i;

	for (i = 0; i < smu8_smu->scratch_buffer_length; i++) {
		if (smu8_smu->scratch_buffer[i].firmware_ID
			== SMU8_SCRATCH_ENTRY_SMU8_FUSION_CLKTABLE)
			break;
	}

	*table = (struct SMU8_Fusion_ClkTable *)smu8_smu->scratch_buffer[i].kaddr;

	FUNC2(hwmgr,
				PPSMC_MSG_SetClkTableAddrHi,
				FUNC3(smu8_smu->scratch_buffer[i].mc_addr));

	FUNC2(hwmgr,
				PPSMC_MSG_SetClkTableAddrLo,
				FUNC0(smu8_smu->scratch_buffer[i].mc_addr));

	FUNC2(hwmgr, PPSMC_MSG_ExecuteJob,
				smu8_smu->toc_entry_clock_table);

	FUNC1(hwmgr, PPSMC_MSG_ClkTableXferToDram);

	return 0;
}