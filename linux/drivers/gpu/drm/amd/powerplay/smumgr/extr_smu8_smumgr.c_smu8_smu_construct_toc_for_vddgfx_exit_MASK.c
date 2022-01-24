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
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ kaddr; } ;
struct smu8_smumgr {scalar_t__ toc_entry_used_count; TYPE_1__ toc_buffer; } ;
struct pp_hwmgr {scalar_t__ chip_id; struct smu8_smumgr* smu_backend; } ;
struct TOC {scalar_t__* JobList; } ;

/* Variables and functions */
 scalar_t__ CHIP_STONEY ; 
 size_t JOB_GFX_RESTORE ; 
 int /*<<< orphan*/  SMU8_SCRATCH_ENTRY_UCODE_ID_CP_CE ; 
 int /*<<< orphan*/  SMU8_SCRATCH_ENTRY_UCODE_ID_CP_ME ; 
 int /*<<< orphan*/  SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT1 ; 
 int /*<<< orphan*/  SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT2 ; 
 int /*<<< orphan*/  SMU8_SCRATCH_ENTRY_UCODE_ID_CP_PFP ; 
 int /*<<< orphan*/  SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_G ; 
 int /*<<< orphan*/  SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SCRATCH ; 
 int /*<<< orphan*/  SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_ARAM ; 
 int /*<<< orphan*/  SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_DRAM ; 
 int /*<<< orphan*/  TASK_TYPE_UCODE_LOAD ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct pp_hwmgr *hwmgr)
{
	struct smu8_smumgr *smu8_smu = hwmgr->smu_backend;
	struct TOC *toc = (struct TOC *)smu8_smu->toc_buffer.kaddr;

	toc->JobList[JOB_GFX_RESTORE] = (uint8_t)smu8_smu->toc_entry_used_count;

	FUNC1(hwmgr,
				SMU8_SCRATCH_ENTRY_UCODE_ID_CP_CE, false);
	FUNC1(hwmgr,
				SMU8_SCRATCH_ENTRY_UCODE_ID_CP_PFP, false);
	FUNC1(hwmgr,
				SMU8_SCRATCH_ENTRY_UCODE_ID_CP_ME, false);
	FUNC1(hwmgr,
				SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT1, false);

	if (hwmgr->chip_id == CHIP_STONEY)
		FUNC1(hwmgr,
				SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT1, false);
	else
		FUNC1(hwmgr,
				SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT2, false);

	FUNC1(hwmgr,
				SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_G, false);

	/* populate scratch */
	FUNC0(hwmgr,
				SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SCRATCH,
				TASK_TYPE_UCODE_LOAD, false);

	FUNC0(hwmgr,
				SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_ARAM,
				TASK_TYPE_UCODE_LOAD, false);

	FUNC0(hwmgr,
				SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_DRAM,
				TASK_TYPE_UCODE_LOAD, true);

	return 0;
}