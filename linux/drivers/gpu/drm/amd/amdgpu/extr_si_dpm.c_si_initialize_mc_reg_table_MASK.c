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
struct si_mc_reg_table {int dummy; } ;
struct si_power_info {struct si_mc_reg_table mc_reg_table; } ;
struct atom_mc_reg_table {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MC_PMG_CMD_EMRS ; 
 int /*<<< orphan*/  MC_PMG_CMD_MRS ; 
 int /*<<< orphan*/  MC_PMG_CMD_MRS1 ; 
 int /*<<< orphan*/  MC_PMG_CMD_MRS2 ; 
 int /*<<< orphan*/  MC_SEQ_CAS_TIMING ; 
 int /*<<< orphan*/  MC_SEQ_CAS_TIMING_LP ; 
 int /*<<< orphan*/  MC_SEQ_MISC_TIMING ; 
 int /*<<< orphan*/  MC_SEQ_MISC_TIMING2 ; 
 int /*<<< orphan*/  MC_SEQ_MISC_TIMING2_LP ; 
 int /*<<< orphan*/  MC_SEQ_MISC_TIMING_LP ; 
 int /*<<< orphan*/  MC_SEQ_PMG_CMD_EMRS_LP ; 
 int /*<<< orphan*/  MC_SEQ_PMG_CMD_MRS1_LP ; 
 int /*<<< orphan*/  MC_SEQ_PMG_CMD_MRS2_LP ; 
 int /*<<< orphan*/  MC_SEQ_PMG_CMD_MRS_LP ; 
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
 int FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,struct atom_mc_reg_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct atom_mc_reg_table*) ; 
 struct atom_mc_reg_table* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int FUNC6 (struct atom_mc_reg_table*,struct si_mc_reg_table*) ; 
 struct si_power_info* FUNC7 (struct amdgpu_device*) ; 
 int FUNC8 (struct amdgpu_device*,struct si_mc_reg_table*) ; 
 int /*<<< orphan*/  FUNC9 (struct si_mc_reg_table*) ; 
 int /*<<< orphan*/  FUNC10 (struct si_mc_reg_table*) ; 

__attribute__((used)) static int FUNC11(struct amdgpu_device *adev)
{
	struct si_power_info *si_pi = FUNC7(adev);
	struct atom_mc_reg_table *table;
	struct si_mc_reg_table *si_table = &si_pi->mc_reg_table;
	u8 module_index = FUNC5(adev);
	int ret;

	table = FUNC4(sizeof(struct atom_mc_reg_table), GFP_KERNEL);
	if (!table)
		return -ENOMEM;

	FUNC1(MC_SEQ_RAS_TIMING_LP, FUNC0(MC_SEQ_RAS_TIMING));
	FUNC1(MC_SEQ_CAS_TIMING_LP, FUNC0(MC_SEQ_CAS_TIMING));
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

	ret = FUNC2(adev, module_index, table);
	if (ret)
		goto init_mc_done;

	ret = FUNC6(table, si_table);
	if (ret)
		goto init_mc_done;

	FUNC9(si_table);

	ret = FUNC8(adev, si_table);
	if (ret)
		goto init_mc_done;

	FUNC10(si_table);

init_mc_done:
	FUNC3(table);

	return ret;

}