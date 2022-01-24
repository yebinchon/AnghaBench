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
struct TYPE_2__ {int /*<<< orphan*/  ded; int /*<<< orphan*/  sec; } ;
struct ppc4xx_edac_pdata {int /*<<< orphan*/  dcr_host; TYPE_1__ irqs; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mem_ctl_info {int /*<<< orphan*/  pdev; struct ppc4xx_edac_pdata* pvt_info; } ;

/* Variables and functions */
 scalar_t__ EDAC_OPSTATE_INT ; 
 int /*<<< orphan*/  SDRAM_DCR_RESOURCE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mem_ctl_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*) ; 
 scalar_t__ edac_op_state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mem_ctl_info*) ; 

__attribute__((used)) static int
FUNC5(struct platform_device *op)
{
	struct mem_ctl_info *mci = FUNC1(&op->dev);
	struct ppc4xx_edac_pdata *pdata = mci->pvt_info;

	if (edac_op_state == EDAC_OPSTATE_INT) {
		FUNC4(pdata->irqs.sec, mci);
		FUNC4(pdata->irqs.ded, mci);
	}

	FUNC0(pdata->dcr_host, SDRAM_DCR_RESOURCE_LEN);

	FUNC2(mci->pdev);
	FUNC3(mci);

	return 0;
}