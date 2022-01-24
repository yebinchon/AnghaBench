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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct pdc_state {scalar_t__ hw_type; int /*<<< orphan*/  pdc_irq; scalar_t__ pdc_reg_vbase; struct platform_device* pdev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FA_HW ; 
 scalar_t__ FA_RCVLAZY0_OFFSET ; 
 int /*<<< orphan*/  PDC_INTMASK ; 
 scalar_t__ PDC_INTMASK_OFFSET ; 
 int /*<<< orphan*/  PDC_LAZY_INT ; 
 scalar_t__ PDC_RCVLAZY0_OFFSET ; 
 int PDC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pdc_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pdc_irq_handler ; 

__attribute__((used)) static int FUNC6(struct pdc_state *pdcs)
{
	struct platform_device *pdev = pdcs->pdev;
	struct device *dev = &pdev->dev;
	struct device_node *dn = pdev->dev.of_node;
	int err;

	/* interrupt configuration */
	FUNC4(PDC_INTMASK, pdcs->pdc_reg_vbase + PDC_INTMASK_OFFSET);

	if (pdcs->hw_type == FA_HW)
		FUNC4(PDC_LAZY_INT, pdcs->pdc_reg_vbase +
			  FA_RCVLAZY0_OFFSET);
	else
		FUNC4(PDC_LAZY_INT, pdcs->pdc_reg_vbase +
			  PDC_RCVLAZY0_OFFSET);

	/* read irq from device tree */
	pdcs->pdc_irq = FUNC5(dn, 0);
	FUNC0(dev, "pdc device %s irq %u for pdcs %p",
		FUNC2(dev), pdcs->pdc_irq, pdcs);

	err = FUNC3(dev, pdcs->pdc_irq, pdc_irq_handler, 0,
			       FUNC2(dev), dev);
	if (err) {
		FUNC1(dev, "IRQ %u request failed with err %d\n",
			pdcs->pdc_irq, err);
		return err;
	}
	return PDC_SUCCESS;
}