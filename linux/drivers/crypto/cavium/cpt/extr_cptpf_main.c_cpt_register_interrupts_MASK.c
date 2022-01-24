#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct cpt_device {TYPE_1__* pdev; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPT_PF_MSIX_VECTORS ; 
 int /*<<< orphan*/  PCI_IRQ_MSIX ; 
 int /*<<< orphan*/  FUNC1 (struct cpt_device*) ; 
 int /*<<< orphan*/  cpt_mbx0_intr_handler ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct cpt_device*) ; 

__attribute__((used)) static int FUNC7(struct cpt_device *cpt)
{
	int ret;
	struct device *dev = &cpt->pdev->dev;

	/* Enable MSI-X */
	ret = FUNC3(cpt->pdev, CPT_PF_MSIX_VECTORS,
			CPT_PF_MSIX_VECTORS, PCI_IRQ_MSIX);
	if (ret < 0) {
		FUNC2(&cpt->pdev->dev, "Request for #%d msix vectors failed\n",
			CPT_PF_MSIX_VECTORS);
		return ret;
	}

	/* Register mailbox interrupt handlers */
	ret = FUNC6(FUNC5(cpt->pdev, FUNC0(0)),
			  cpt_mbx0_intr_handler, 0, "CPT Mbox0", cpt);
	if (ret)
		goto fail;

	/* Enable mailbox interrupt */
	FUNC1(cpt);
	return 0;

fail:
	FUNC2(dev, "Request irq failed\n");
	FUNC4(cpt->pdev);
	return ret;
}