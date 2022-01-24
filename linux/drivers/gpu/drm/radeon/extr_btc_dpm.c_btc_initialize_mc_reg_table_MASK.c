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
struct evergreen_mc_reg_table {int dummy; } ;
struct evergreen_power_info {struct evergreen_mc_reg_table mc_reg_table; } ;
struct atom_mc_reg_table {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MC_PMG_CMD_EMRS ; 
 int /*<<< orphan*/  MC_PMG_CMD_MRS ; 
 int /*<<< orphan*/  MC_PMG_CMD_MRS1 ; 
 int /*<<< orphan*/  MC_SEQ_CAS_TIMING ; 
 int /*<<< orphan*/  MC_SEQ_CAS_TIMING_LP ; 
 int /*<<< orphan*/  MC_SEQ_MISC_TIMING ; 
 int /*<<< orphan*/  MC_SEQ_MISC_TIMING2 ; 
 int /*<<< orphan*/  MC_SEQ_MISC_TIMING2_LP ; 
 int /*<<< orphan*/  MC_SEQ_MISC_TIMING_LP ; 
 int /*<<< orphan*/  MC_SEQ_PMG_CMD_EMRS_LP ; 
 int /*<<< orphan*/  MC_SEQ_PMG_CMD_MRS1_LP ; 
 int /*<<< orphan*/  MC_SEQ_PMG_CMD_MRS_LP ; 
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
 int FUNC2 (struct atom_mc_reg_table*,struct evergreen_mc_reg_table*) ; 
 int FUNC3 (struct radeon_device*,struct evergreen_mc_reg_table*) ; 
 int /*<<< orphan*/  FUNC4 (struct evergreen_mc_reg_table*) ; 
 int /*<<< orphan*/  FUNC5 (struct evergreen_mc_reg_table*) ; 
 struct evergreen_power_info* FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct atom_mc_reg_table*) ; 
 struct atom_mc_reg_table* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct radeon_device*,int /*<<< orphan*/ ,struct atom_mc_reg_table*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC11(struct radeon_device *rdev)
{
	int ret;
	struct atom_mc_reg_table *table;
	struct evergreen_power_info *eg_pi = FUNC6(rdev);
	struct evergreen_mc_reg_table *eg_table = &eg_pi->mc_reg_table;
	u8 module_index = FUNC10(rdev);

	table = FUNC8(sizeof(struct atom_mc_reg_table), GFP_KERNEL);
	if (!table)
		return -ENOMEM;

	/* Program additional LP registers that are no longer programmed by VBIOS */
	FUNC1(MC_SEQ_RAS_TIMING_LP, FUNC0(MC_SEQ_RAS_TIMING));
	FUNC1(MC_SEQ_CAS_TIMING_LP, FUNC0(MC_SEQ_CAS_TIMING));
	FUNC1(MC_SEQ_MISC_TIMING_LP, FUNC0(MC_SEQ_MISC_TIMING));
	FUNC1(MC_SEQ_MISC_TIMING2_LP, FUNC0(MC_SEQ_MISC_TIMING2));
	FUNC1(MC_SEQ_RD_CTL_D0_LP, FUNC0(MC_SEQ_RD_CTL_D0));
	FUNC1(MC_SEQ_RD_CTL_D1_LP, FUNC0(MC_SEQ_RD_CTL_D1));
	FUNC1(MC_SEQ_WR_CTL_D0_LP, FUNC0(MC_SEQ_WR_CTL_D0));
	FUNC1(MC_SEQ_WR_CTL_D1_LP, FUNC0(MC_SEQ_WR_CTL_D1));
	FUNC1(MC_SEQ_PMG_CMD_EMRS_LP, FUNC0(MC_PMG_CMD_EMRS));
	FUNC1(MC_SEQ_PMG_CMD_MRS_LP, FUNC0(MC_PMG_CMD_MRS));
	FUNC1(MC_SEQ_PMG_CMD_MRS1_LP, FUNC0(MC_PMG_CMD_MRS1));

	ret = FUNC9(rdev, module_index, table);

	if (ret)
		goto init_mc_done;

	ret = FUNC2(table, eg_table);

	if (ret)
		goto init_mc_done;

	FUNC4(eg_table);
	ret = FUNC3(rdev, eg_table);

	if (ret)
		goto init_mc_done;

	FUNC5(eg_table);

init_mc_done:
	FUNC7(table);

	return ret;
}