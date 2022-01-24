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
typedef  int u32 ;
struct mpc85xx_l2_pdata {scalar_t__ l2_vbase; } ;
struct edac_device_ctl_info {int /*<<< orphan*/  ctl_name; struct mpc85xx_l2_pdata* pvt_info; } ;

/* Variables and functions */
 int L2_EDE_CE_MASK ; 
 int L2_EDE_MASK ; 
 int L2_EDE_UE_MASK ; 
 scalar_t__ MPC85XX_L2_CAPTDATAHI ; 
 scalar_t__ MPC85XX_L2_CAPTDATALO ; 
 scalar_t__ MPC85XX_L2_CAPTECC ; 
 scalar_t__ MPC85XX_L2_ERRADDR ; 
 scalar_t__ MPC85XX_L2_ERRATTR ; 
 scalar_t__ MPC85XX_L2_ERRDET ; 
 int /*<<< orphan*/  FUNC0 (struct edac_device_ctl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct edac_device_ctl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5(struct edac_device_ctl_info *edac_dev)
{
	struct mpc85xx_l2_pdata *pdata = edac_dev->pvt_info;
	u32 err_detect;

	err_detect = FUNC2(pdata->l2_vbase + MPC85XX_L2_ERRDET);

	if (!(err_detect & L2_EDE_MASK))
		return;

	FUNC4("ECC Error in CPU L2 cache\n");
	FUNC4("L2 Error Detect Register: 0x%08x\n", err_detect);
	FUNC4("L2 Error Capture Data High Register: 0x%08x\n",
	       FUNC2(pdata->l2_vbase + MPC85XX_L2_CAPTDATAHI));
	FUNC4("L2 Error Capture Data Lo Register: 0x%08x\n",
	       FUNC2(pdata->l2_vbase + MPC85XX_L2_CAPTDATALO));
	FUNC4("L2 Error Syndrome Register: 0x%08x\n",
	       FUNC2(pdata->l2_vbase + MPC85XX_L2_CAPTECC));
	FUNC4("L2 Error Attributes Capture Register: 0x%08x\n",
	       FUNC2(pdata->l2_vbase + MPC85XX_L2_ERRATTR));
	FUNC4("L2 Error Address Capture Register: 0x%08x\n",
	       FUNC2(pdata->l2_vbase + MPC85XX_L2_ERRADDR));

	/* clear error detect register */
	FUNC3(pdata->l2_vbase + MPC85XX_L2_ERRDET, err_detect);

	if (err_detect & L2_EDE_CE_MASK)
		FUNC0(edac_dev, 0, 0, edac_dev->ctl_name);

	if (err_detect & L2_EDE_UE_MASK)
		FUNC1(edac_dev, 0, 0, edac_dev->ctl_name);
}