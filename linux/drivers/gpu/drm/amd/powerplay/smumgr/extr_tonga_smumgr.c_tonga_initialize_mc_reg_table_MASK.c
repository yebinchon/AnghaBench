#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct tonga_mc_reg_table {int dummy; } ;
struct tonga_smumgr {struct tonga_mc_reg_table mc_reg_table; } ;
struct pp_hwmgr {int /*<<< orphan*/  device; scalar_t__ smu_backend; } ;
typedef  int /*<<< orphan*/  pp_atomctrl_mc_reg_table ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmMC_PMG_CMD_EMRS ; 
 int /*<<< orphan*/  mmMC_PMG_CMD_MRS ; 
 int /*<<< orphan*/  mmMC_PMG_CMD_MRS1 ; 
 int /*<<< orphan*/  mmMC_PMG_CMD_MRS2 ; 
 int /*<<< orphan*/  mmMC_SEQ_CAS_TIMING ; 
 int /*<<< orphan*/  mmMC_SEQ_CAS_TIMING_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_DLL_STBY ; 
 int /*<<< orphan*/  mmMC_SEQ_DLL_STBY_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_G5PDX_CMD0 ; 
 int /*<<< orphan*/  mmMC_SEQ_G5PDX_CMD0_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_G5PDX_CMD1 ; 
 int /*<<< orphan*/  mmMC_SEQ_G5PDX_CMD1_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_G5PDX_CTRL ; 
 int /*<<< orphan*/  mmMC_SEQ_G5PDX_CTRL_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_MISC_TIMING ; 
 int /*<<< orphan*/  mmMC_SEQ_MISC_TIMING2 ; 
 int /*<<< orphan*/  mmMC_SEQ_MISC_TIMING2_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_MISC_TIMING_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_PMG_CMD_EMRS_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_PMG_CMD_MRS1_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_PMG_CMD_MRS2_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_PMG_CMD_MRS_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_PMG_DVS_CMD ; 
 int /*<<< orphan*/  mmMC_SEQ_PMG_DVS_CMD_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_PMG_DVS_CTL ; 
 int /*<<< orphan*/  mmMC_SEQ_PMG_DVS_CTL_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_PMG_TIMING ; 
 int /*<<< orphan*/  mmMC_SEQ_PMG_TIMING_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_RAS_TIMING ; 
 int /*<<< orphan*/  mmMC_SEQ_RAS_TIMING_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_RD_CTL_D0 ; 
 int /*<<< orphan*/  mmMC_SEQ_RD_CTL_D0_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_RD_CTL_D1 ; 
 int /*<<< orphan*/  mmMC_SEQ_RD_CTL_D1_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_WR_CTL_2 ; 
 int /*<<< orphan*/  mmMC_SEQ_WR_CTL_2_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_WR_CTL_D0 ; 
 int /*<<< orphan*/  mmMC_SEQ_WR_CTL_D0_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_WR_CTL_D1 ; 
 int /*<<< orphan*/  mmMC_SEQ_WR_CTL_D1_LP ; 
 int FUNC5 (int /*<<< orphan*/ *,struct tonga_mc_reg_table*) ; 
 int /*<<< orphan*/  FUNC6 (struct pp_hwmgr*) ; 
 int FUNC7 (struct pp_hwmgr*,struct tonga_mc_reg_table*) ; 
 int /*<<< orphan*/  FUNC8 (struct tonga_mc_reg_table*) ; 
 int /*<<< orphan*/  FUNC9 (struct tonga_mc_reg_table*) ; 

__attribute__((used)) static int FUNC10(struct pp_hwmgr *hwmgr)
{
	int result;
	struct tonga_smumgr *smu_data = (struct tonga_smumgr *)(hwmgr->smu_backend);
	pp_atomctrl_mc_reg_table *table;
	struct tonga_mc_reg_table *ni_table = &smu_data->mc_reg_table;
	uint8_t module_index = FUNC6(hwmgr);

	table = FUNC4(sizeof(pp_atomctrl_mc_reg_table), GFP_KERNEL);

	if (table == NULL)
		return -ENOMEM;

	/* Program additional LP registers that are no longer programmed by VBIOS */
	FUNC2(hwmgr->device, mmMC_SEQ_RAS_TIMING_LP,
			FUNC1(hwmgr->device, mmMC_SEQ_RAS_TIMING));
	FUNC2(hwmgr->device, mmMC_SEQ_CAS_TIMING_LP,
			FUNC1(hwmgr->device, mmMC_SEQ_CAS_TIMING));
	FUNC2(hwmgr->device, mmMC_SEQ_DLL_STBY_LP,
			FUNC1(hwmgr->device, mmMC_SEQ_DLL_STBY));
	FUNC2(hwmgr->device, mmMC_SEQ_G5PDX_CMD0_LP,
			FUNC1(hwmgr->device, mmMC_SEQ_G5PDX_CMD0));
	FUNC2(hwmgr->device, mmMC_SEQ_G5PDX_CMD1_LP,
			FUNC1(hwmgr->device, mmMC_SEQ_G5PDX_CMD1));
	FUNC2(hwmgr->device, mmMC_SEQ_G5PDX_CTRL_LP,
			FUNC1(hwmgr->device, mmMC_SEQ_G5PDX_CTRL));
	FUNC2(hwmgr->device, mmMC_SEQ_PMG_DVS_CMD_LP,
			FUNC1(hwmgr->device, mmMC_SEQ_PMG_DVS_CMD));
	FUNC2(hwmgr->device, mmMC_SEQ_PMG_DVS_CTL_LP,
			FUNC1(hwmgr->device, mmMC_SEQ_PMG_DVS_CTL));
	FUNC2(hwmgr->device, mmMC_SEQ_MISC_TIMING_LP,
			FUNC1(hwmgr->device, mmMC_SEQ_MISC_TIMING));
	FUNC2(hwmgr->device, mmMC_SEQ_MISC_TIMING2_LP,
			FUNC1(hwmgr->device, mmMC_SEQ_MISC_TIMING2));
	FUNC2(hwmgr->device, mmMC_SEQ_PMG_CMD_EMRS_LP,
			FUNC1(hwmgr->device, mmMC_PMG_CMD_EMRS));
	FUNC2(hwmgr->device, mmMC_SEQ_PMG_CMD_MRS_LP,
			FUNC1(hwmgr->device, mmMC_PMG_CMD_MRS));
	FUNC2(hwmgr->device, mmMC_SEQ_PMG_CMD_MRS1_LP,
			FUNC1(hwmgr->device, mmMC_PMG_CMD_MRS1));
	FUNC2(hwmgr->device, mmMC_SEQ_WR_CTL_D0_LP,
			FUNC1(hwmgr->device, mmMC_SEQ_WR_CTL_D0));
	FUNC2(hwmgr->device, mmMC_SEQ_WR_CTL_D1_LP,
			FUNC1(hwmgr->device, mmMC_SEQ_WR_CTL_D1));
	FUNC2(hwmgr->device, mmMC_SEQ_RD_CTL_D0_LP,
			FUNC1(hwmgr->device, mmMC_SEQ_RD_CTL_D0));
	FUNC2(hwmgr->device, mmMC_SEQ_RD_CTL_D1_LP,
			FUNC1(hwmgr->device, mmMC_SEQ_RD_CTL_D1));
	FUNC2(hwmgr->device, mmMC_SEQ_PMG_TIMING_LP,
			FUNC1(hwmgr->device, mmMC_SEQ_PMG_TIMING));
	FUNC2(hwmgr->device, mmMC_SEQ_PMG_CMD_MRS2_LP,
			FUNC1(hwmgr->device, mmMC_PMG_CMD_MRS2));
	FUNC2(hwmgr->device, mmMC_SEQ_WR_CTL_2_LP,
			FUNC1(hwmgr->device, mmMC_SEQ_WR_CTL_2));

	result = FUNC0(hwmgr, module_index, table);

	if (!result)
		result = FUNC5(table, ni_table);

	if (!result) {
		FUNC8(ni_table);
		result = FUNC7(hwmgr, ni_table);
	}

	if (!result)
		FUNC9(ni_table);

	FUNC3(table);

	return result;
}