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
struct ni_mc_reg_table {int dummy; } ;
struct ni_power_info {struct ni_mc_reg_table mc_reg_table; } ;
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
 int /*<<< orphan*/  MC_SEQ_WR_CTL_D0 ; 
 int /*<<< orphan*/  MC_SEQ_WR_CTL_D0_LP ; 
 int /*<<< orphan*/  MC_SEQ_WR_CTL_D1 ; 
 int /*<<< orphan*/  MC_SEQ_WR_CTL_D1_LP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atom_mc_reg_table*) ; 
 struct atom_mc_reg_table* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct atom_mc_reg_table*,struct ni_mc_reg_table*) ; 
 struct ni_power_info* FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*,struct ni_mc_reg_table*) ; 
 int /*<<< orphan*/  FUNC7 (struct ni_mc_reg_table*) ; 
 int /*<<< orphan*/  FUNC8 (struct ni_mc_reg_table*) ; 
 int FUNC9 (struct radeon_device*,int /*<<< orphan*/ ,struct atom_mc_reg_table*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC11(struct radeon_device *rdev)
{
	struct ni_power_info *ni_pi = FUNC5(rdev);
	int ret;
	struct atom_mc_reg_table *table;
	struct ni_mc_reg_table *ni_table = &ni_pi->mc_reg_table;
	u8 module_index = FUNC10(rdev);

	table = FUNC3(sizeof(struct atom_mc_reg_table), GFP_KERNEL);
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

	ret = FUNC9(rdev, module_index, table);

	if (ret)
		goto init_mc_done;

	ret = FUNC4(table, ni_table);

	if (ret)
		goto init_mc_done;

	FUNC7(ni_table);

	ret = FUNC6(rdev, ni_table);

	if (ret)
		goto init_mc_done;

	FUNC8(ni_table);

init_mc_done:
	FUNC2(table);

	return ret;
}