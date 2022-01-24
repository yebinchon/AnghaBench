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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mem_ctl_info {struct fsl_mc_pdata* pvt_info; } ;
struct fsl_mc_pdata {scalar_t__ mc_vbase; } ;

/* Variables and functions */
 scalar_t__ EDAC_OPSTATE_INT ; 
 scalar_t__ FSL_MC_ERR_DISABLE ; 
 scalar_t__ FSL_MC_ERR_INT_EN ; 
 scalar_t__ FSL_MC_ERR_SBE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct mem_ctl_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_ctl_info*) ; 
 scalar_t__ edac_op_state ; 
 int /*<<< orphan*/  orig_ddr_err_disable ; 
 int /*<<< orphan*/  orig_ddr_err_sbe ; 

int FUNC5(struct platform_device *op)
{
	struct mem_ctl_info *mci = FUNC1(&op->dev);
	struct fsl_mc_pdata *pdata = mci->pvt_info;

	FUNC2(0, "\n");

	if (edac_op_state == EDAC_OPSTATE_INT) {
		FUNC0(pdata->mc_vbase + FSL_MC_ERR_INT_EN, 0);
	}

	FUNC0(pdata->mc_vbase + FSL_MC_ERR_DISABLE,
		  orig_ddr_err_disable);
	FUNC0(pdata->mc_vbase + FSL_MC_ERR_SBE, orig_ddr_err_sbe);

	FUNC3(&op->dev);
	FUNC4(mci);
	return 0;
}