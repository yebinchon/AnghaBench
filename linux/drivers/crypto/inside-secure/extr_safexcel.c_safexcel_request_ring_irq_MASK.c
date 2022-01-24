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
struct safexcel_ring_irq_data {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct pci_dev {struct device dev; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int /*<<< orphan*/  CONFIG_PCI ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct safexcel_ring_irq_data*) ; 
 int FUNC4 (struct pci_dev*,int) ; 
 int FUNC5 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC7(void *pdev, int irqid,
				     int is_pci_dev,
				     irq_handler_t handler,
				     irq_handler_t threaded_handler,
				     struct safexcel_ring_irq_data *ring_irq_priv)
{
	int ret, irq;
	struct device *dev;

	if (FUNC0(CONFIG_PCI) && is_pci_dev) {
		struct pci_dev *pci_pdev = pdev;

		dev = &pci_pdev->dev;
		irq = FUNC4(pci_pdev, irqid);
		if (irq < 0) {
			FUNC1(dev, "unable to get device MSI IRQ %d (err %d)\n",
				irqid, irq);
			return irq;
		}
	} else if (FUNC0(CONFIG_OF)) {
		struct platform_device *plf_pdev = pdev;
		char irq_name[6] = {0}; /* "ringX\0" */

		FUNC6(irq_name, 6, "ring%d", irqid);
		dev = &plf_pdev->dev;
		irq = FUNC5(plf_pdev, irq_name);

		if (irq < 0) {
			FUNC1(dev, "unable to get IRQ '%s' (err %d)\n",
				irq_name, irq);
			return irq;
		}
	}

	ret = FUNC3(dev, irq, handler,
					threaded_handler, IRQF_ONESHOT,
					FUNC2(dev), ring_irq_priv);
	if (ret) {
		FUNC1(dev, "unable to request IRQ %d\n", irq);
		return ret;
	}

	return irq;
}