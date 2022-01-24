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
struct thunderx_l2c {int /*<<< orphan*/  debugfs; scalar_t__ regs; } ;
struct pci_dev {int device; int /*<<< orphan*/  dev; } ;
struct edac_device_ctl_info {struct thunderx_l2c* pvt_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2C_CBC_INT_ENA_ALL ; 
 scalar_t__ L2C_CBC_INT_ENA_W1C ; 
 int /*<<< orphan*/  L2C_MCI_INT_ENA_ALL ; 
 scalar_t__ L2C_MCI_INT_ENA_W1C ; 
 int /*<<< orphan*/  L2C_TAD_INT_ENA_ALL ; 
 scalar_t__ L2C_TAD_INT_ENA_W1C ; 
#define  PCI_DEVICE_ID_THUNDER_L2C_CBC 130 
#define  PCI_DEVICE_ID_THUNDER_L2C_MCI 129 
#define  PCI_DEVICE_ID_THUNDER_L2C_TAD 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct edac_device_ctl_info*) ; 
 struct edac_device_ctl_info* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct edac_device_ctl_info *edac_dev = FUNC3(pdev);
	struct thunderx_l2c *l2c = edac_dev->pvt_info;

	switch (pdev->device) {
	case PCI_DEVICE_ID_THUNDER_L2C_TAD:
		FUNC4(L2C_TAD_INT_ENA_ALL, l2c->regs + L2C_TAD_INT_ENA_W1C);
		break;
	case PCI_DEVICE_ID_THUNDER_L2C_CBC:
		FUNC4(L2C_CBC_INT_ENA_ALL, l2c->regs + L2C_CBC_INT_ENA_W1C);
		break;
	case PCI_DEVICE_ID_THUNDER_L2C_MCI:
		FUNC4(L2C_MCI_INT_ENA_ALL, l2c->regs + L2C_MCI_INT_ENA_W1C);
		break;
	}

	FUNC0(l2c->debugfs);

	FUNC1(&pdev->dev);
	FUNC2(edac_dev);
}