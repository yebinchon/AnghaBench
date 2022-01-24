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
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int saveBSM; int saveVBT; } ;
struct drm_psb_private {int suspended; int msi_addr; int msi_data; TYPE_1__ regs; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3hot ; 
 int PSB_PCIx_MSI_ADDR_LOC ; 
 int PSB_PCIx_MSI_DATA_LOC ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct drm_device* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct drm_device *dev = FUNC1(pdev);
	struct drm_psb_private *dev_priv = dev->dev_private;
	int bsm, vbt;

	if (dev_priv->suspended)
		return;

	FUNC3(pdev);
	FUNC2(pdev, 0x5C, &bsm);
	dev_priv->regs.saveBSM = bsm;
	FUNC2(pdev, 0xFC, &vbt);
	dev_priv->regs.saveVBT = vbt;
	FUNC2(pdev, PSB_PCIx_MSI_ADDR_LOC, &dev_priv->msi_addr);
	FUNC2(pdev, PSB_PCIx_MSI_DATA_LOC, &dev_priv->msi_data);

	FUNC0(pdev);
	FUNC4(pdev, PCI_D3hot);

	dev_priv->suspended = true;
}