#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ded; int sec; } ;
struct ppc4xx_edac_pdata {TYPE_2__ irqs; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mem_ctl_info {struct ppc4xx_edac_pdata* pvt_info; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  INTMAP_ECCDED_INDEX ; 
 int /*<<< orphan*/  INTMAP_ECCSEC_INDEX ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,struct mem_ctl_info*) ; 
 int FUNC1 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppc4xx_edac_isr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mem_ctl_info*,char*,...) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mem_ctl_info*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *op,
				    struct mem_ctl_info *mci)
{
	int status = 0;
	int ded_irq, sec_irq;
	struct ppc4xx_edac_pdata *pdata = mci->pvt_info;
	struct device_node *np = op->dev.of_node;

	ded_irq = FUNC1(np, INTMAP_ECCDED_INDEX);
	sec_irq = FUNC1(np, INTMAP_ECCSEC_INDEX);

	if (!ded_irq || !sec_irq) {
		FUNC2(KERN_ERR, mci,
				      "Unable to map interrupts.\n");
		status = -ENODEV;
		goto fail;
	}

	status = FUNC3(ded_irq,
			     ppc4xx_edac_isr,
			     0,
			     "[EDAC] MC ECCDED",
			     mci);

	if (status < 0) {
		FUNC2(KERN_ERR, mci,
				      "Unable to request irq %d for ECC DED",
				      ded_irq);
		status = -ENODEV;
		goto fail1;
	}

	status = FUNC3(sec_irq,
			     ppc4xx_edac_isr,
			     0,
			     "[EDAC] MC ECCSEC",
			     mci);

	if (status < 0) {
		FUNC2(KERN_ERR, mci,
				      "Unable to request irq %d for ECC SEC",
				      sec_irq);
		status = -ENODEV;
		goto fail2;
	}

	FUNC2(KERN_INFO, mci, "ECCDED irq is %d\n", ded_irq);
	FUNC2(KERN_INFO, mci, "ECCSEC irq is %d\n", sec_irq);

	pdata->irqs.ded = ded_irq;
	pdata->irqs.sec = sec_irq;

	return 0;

 fail2:
	FUNC0(sec_irq, mci);

 fail1:
	FUNC0(ded_irq, mci);

 fail:
	return status;
}