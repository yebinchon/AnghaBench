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
typedef  int /*<<< orphan*/  u8 ;
struct radeon_device {int dummy; } ;
struct ci_mc_reg_table {int dummy; } ;
struct ci_power_info {struct ci_mc_reg_table mc_reg_table; } ;
struct atom_mc_reg_table {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MC_PMG_CMD_EMRS ; 
 int /*<<< orphan*/  MC_PMG_CMD_MRS ; 
 int /*<<< orphan*/  MC_PMG_CMD_MRS1 ; 
 int /*<<< orphan*/  MC_PMG_CMD_MRS2 ; 
 int /*<<< orphan*/  MC_SEQ_CAS_TIMING ; 
 int /*<<< orphan*/  MC_SEQ_CAS_TIMING_LP ; 
 int /*<<< orphan*/  MC_SEQ_DLL_STBY ; 
 int /*<<< orphan*/  MC_SEQ_DLL_STBY_LP ; 
 int /*<<< orphan*/  MC_SEQ_G5PDX_CMD0 ; 
 int /*<<< orphan*/  MC_SEQ_G5PDX_CMD0_LP ; 
 int /*<<< orphan*/  MC_SEQ_G5PDX_CMD1 ; 
 int /*<<< orphan*/  MC_SEQ_G5PDX_CMD1_LP ; 
 int /*<<< orphan*/  MC_SEQ_G5PDX_CTRL ; 
 int /*<<< orphan*/  MC_SEQ_G5PDX_CTRL_LP ; 
 int /*<<< orphan*/  MC_SEQ_MISC_TIMING ; 
 int /*<<< orphan*/  MC_SEQ_MISC_TIMING2 ; 
 int /*<<< orphan*/  MC_SEQ_MISC_TIMING2_LP ; 
 int /*<<< orphan*/  MC_SEQ_MISC_TIMING_LP ; 
 int /*<<< orphan*/  MC_SEQ_PMG_CMD_EMRS_LP ; 
 int /*<<< orphan*/  MC_SEQ_PMG_CMD_MRS1_LP ; 
 int /*<<< orphan*/  MC_SEQ_PMG_CMD_MRS2_LP ; 
 int /*<<< orphan*/  MC_SEQ_PMG_CMD_MRS_LP ; 
 int /*<<< orphan*/  MC_SEQ_PMG_DVS_CMD ; 
 int /*<<< orphan*/  MC_SEQ_PMG_DVS_CMD_LP ; 
 int /*<<< orphan*/  MC_SEQ_PMG_DVS_CTL ; 
 int /*<<< orphan*/  MC_SEQ_PMG_DVS_CTL_LP ; 
 int /*<<< orphan*/  MC_SEQ_PMG_TIMING ; 
 int /*<<< orphan*/  MC_SEQ_PMG_TIMING_LP ; 
 int /*<<< orphan*/  MC_SEQ_RAS_TIMING ; 
 int /*<<< orphan*/  MC_SEQ_RAS_TIMING_LP ; 
 int /*<<< orphan*/  MC_SEQ_RD_CTL_D0 ; 
 int /*<<< orphan*/  MC_SEQ_RD_CTL_D0_LP ; 
 int /*<<< orphan*/  MC_SEQ_RD_CTL_D1 ; 
 int /*<<< orphan*/  MC_SEQ_RD_CTL_D1_LP ; 
 int /*<<< orphan*/  MC_SEQ_WR_CTL_2 ; 
 int /*<<< orphan*/  MC_SEQ_WR_CTL_2_LP ; 
 int /*<<< orphan*/  MC_SEQ_WR_CTL_D0 ; 
 int /*<<< orphan*/  MC_SEQ_WR_CTL_D0_LP ; 
 int /*<<< orphan*/  MC_SEQ_WR_CTL_D1 ; 
 int /*<<< orphan*/  MC_SEQ_WR_CTL_D1_LP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct atom_mc_reg_table*,struct ci_mc_reg_table*) ; 
 struct ci_power_info* FUNC3 (struct radeon_device*) ; 
 int FUNC4 (struct radeon_device*,struct ci_mc_reg_table*) ; 
 int FUNC5 (struct radeon_device*,struct ci_mc_reg_table*) ; 
 int /*<<< orphan*/  FUNC6 (struct ci_mc_reg_table*) ; 
 int /*<<< orphan*/  FUNC7 (struct ci_mc_reg_table*) ; 
 int /*<<< orphan*/  FUNC8 (struct atom_mc_reg_table*) ; 
 struct atom_mc_reg_table* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct radeon_device*,int /*<<< orphan*/ ,struct atom_mc_reg_table*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC12(struct radeon_device *rdev)
{
	struct ci_power_info *pi = FUNC3(rdev);
	struct atom_mc_reg_table *table;
	struct ci_mc_reg_table *ci_table = &pi->mc_reg_table;
	u8 module_index = FUNC11(rdev);
	int ret;

	table = FUNC9(sizeof(struct atom_mc_reg_table), GFP_KERNEL);
	if (!table)
		return -ENOMEM;

	FUNC1(MC_SEQ_RAS_TIMING_LP, FUNC0(MC_SEQ_RAS_TIMING));
	FUNC1(MC_SEQ_CAS_TIMING_LP, FUNC0(MC_SEQ_CAS_TIMING));
	FUNC1(MC_SEQ_DLL_STBY_LP, FUNC0(MC_SEQ_DLL_STBY));
	FUNC1(MC_SEQ_G5PDX_CMD0_LP, FUNC0(MC_SEQ_G5PDX_CMD0));
	FUNC1(MC_SEQ_G5PDX_CMD1_LP, FUNC0(MC_SEQ_G5PDX_CMD1));
	FUNC1(MC_SEQ_G5PDX_CTRL_LP, FUNC0(MC_SEQ_G5PDX_CTRL));
	FUNC1(MC_SEQ_PMG_DVS_CMD_LP, FUNC0(MC_SEQ_PMG_DVS_CMD));
	FUNC1(MC_SEQ_PMG_DVS_CTL_LP, FUNC0(MC_SEQ_PMG_DVS_CTL));
	FUNC1(MC_SEQ_MISC_TIMING_LP, FUNC0(MC_SEQ_MISC_TIMING));
	FUNC1(MC_SEQ_MISC_TIMING2_LP, FUNC0(MC_SEQ_MISC_TIMING2));
	FUNC1(MC_SEQ_PMG_CMD_EMRS_LP, FUNC0(MC_PMG_CMD_EMRS));
	FUNC1(MC_SEQ_PMG_CMD_MRS_LP, FUNC0(MC_PMG_CMD_MRS));
	FUNC1(MC_SEQ_PMG_CMD_MRS1_LP, FUNC0(MC_PMG_CMD_MRS1));
	FUNC1(MC_SEQ_WR_CTL_D0_LP, FUNC0(MC_SEQ_WR_CTL_D0));
	FUNC1(MC_SEQ_WR_CTL_D1_LP, FUNC0(MC_SEQ_WR_CTL_D1));
	FUNC1(MC_SEQ_RD_CTL_D0_LP, FUNC0(MC_SEQ_RD_CTL_D0));
	FUNC1(MC_SEQ_RD_CTL_D1_LP, FUNC0(MC_SEQ_RD_CTL_D1));
	FUNC1(MC_SEQ_PMG_TIMING_LP, FUNC0(MC_SEQ_PMG_TIMING));
	FUNC1(MC_SEQ_PMG_CMD_MRS2_LP, FUNC0(MC_PMG_CMD_MRS2));
	FUNC1(MC_SEQ_WR_CTL_2_LP, FUNC0(MC_SEQ_WR_CTL_2));

	ret = FUNC10(rdev, module_index, table);
	if (ret)
		goto init_mc_done;

	ret = FUNC2(table, ci_table);
	if (ret)
		goto init_mc_done;

	FUNC6(ci_table);

	ret = FUNC4(rdev, ci_table);
	if (ret)
		goto init_mc_done;

	ret = FUNC5(rdev, ci_table);
	if (ret)
		goto init_mc_done;

	FUNC7(ci_table);

init_mc_done:
	FUNC8(table);

	return ret;
}