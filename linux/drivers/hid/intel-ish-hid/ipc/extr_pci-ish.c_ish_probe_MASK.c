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
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  msix_enabled; int /*<<< orphan*/  msi_enabled; struct device dev; } ;
struct ishtp_device {int /*<<< orphan*/  resume_wait; int /*<<< orphan*/  suspend_wait; int /*<<< orphan*/  devc; struct pci_dev* pdev; int /*<<< orphan*/  print_log; } ;
struct ish_hw {int /*<<< orphan*/  mem_addr; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 unsigned long IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  PCI_IRQ_ALL_TYPES ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ishtp_device*) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ishtp_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  ish_event_tracer ; 
 int FUNC5 (struct ishtp_device*) ; 
 int /*<<< orphan*/  ish_invalid_pci_ids ; 
 int /*<<< orphan*/  ish_irq_handler ; 
 int FUNC6 (struct pci_dev*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (struct pci_dev*) ; 
 struct ish_hw* FUNC12 (struct ishtp_device*) ; 

__attribute__((used)) static int FUNC13(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	int ret;
	struct ish_hw *hw;
	unsigned long irq_flag = 0;
	struct ishtp_device *ishtp;
	struct device *dev = &pdev->dev;

	/* Check for invalid platforms for ISH support */
	if (FUNC7(ish_invalid_pci_ids))
		return -ENODEV;

	/* enable pci dev */
	ret = FUNC9(pdev);
	if (ret) {
		FUNC0(dev, "ISH: Failed to enable PCI device\n");
		return ret;
	}

	/* set PCI host mastering */
	FUNC8(pdev);

	/* pci request regions for ISH driver */
	ret = FUNC10(pdev, 1 << 0, KBUILD_MODNAME);
	if (ret) {
		FUNC0(dev, "ISH: Failed to get PCI regions\n");
		return ret;
	}

	/* allocates and initializes the ISH dev structure */
	ishtp = FUNC4(pdev);
	if (!ishtp) {
		ret = -ENOMEM;
		return ret;
	}
	hw = FUNC12(ishtp);
	ishtp->print_log = ish_event_tracer;

	/* mapping IO device memory */
	hw->mem_addr = FUNC11(pdev)[0];
	ishtp->pdev = pdev;

	/* request and enable interrupt */
	ret = FUNC6(pdev, 1, 1, PCI_IRQ_ALL_TYPES);
	if (!pdev->msi_enabled && !pdev->msix_enabled)
		irq_flag = IRQF_SHARED;

	ret = FUNC2(dev, pdev->irq, ish_irq_handler,
			       irq_flag, KBUILD_MODNAME, ishtp);
	if (ret) {
		FUNC0(dev, "ISH: request IRQ %d failed\n", pdev->irq);
		return ret;
	}

	FUNC1(ishtp->devc, ishtp);

	FUNC3(&ishtp->suspend_wait);
	FUNC3(&ishtp->resume_wait);

	ret = FUNC5(ishtp);
	if (ret)
		return ret;

	return 0;
}