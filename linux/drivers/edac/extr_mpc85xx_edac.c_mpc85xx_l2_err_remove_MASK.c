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
struct mpc85xx_l2_pdata {scalar_t__ l2_vbase; int /*<<< orphan*/  irq; } ;
struct edac_device_ctl_info {struct mpc85xx_l2_pdata* pvt_info; } ;

/* Variables and functions */
 scalar_t__ EDAC_OPSTATE_INT ; 
 scalar_t__ MPC85XX_L2_ERRDIS ; 
 scalar_t__ MPC85XX_L2_ERRINTEN ; 
 struct edac_device_ctl_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct edac_device_ctl_info*) ; 
 scalar_t__ edac_op_state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  orig_l2_err_disable ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *op)
{
	struct edac_device_ctl_info *edac_dev = FUNC0(&op->dev);
	struct mpc85xx_l2_pdata *pdata = edac_dev->pvt_info;

	FUNC1(0, "\n");

	if (edac_op_state == EDAC_OPSTATE_INT) {
		FUNC5(pdata->l2_vbase + MPC85XX_L2_ERRINTEN, 0);
		FUNC4(pdata->irq);
	}

	FUNC5(pdata->l2_vbase + MPC85XX_L2_ERRDIS, orig_l2_err_disable);
	FUNC2(&op->dev);
	FUNC3(edac_dev);
	return 0;
}