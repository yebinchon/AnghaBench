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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  saveVBT; int /*<<< orphan*/  saveBSM; } ;
struct drm_psb_private {int suspended; int /*<<< orphan*/  msi_data; int /*<<< orphan*/  msi_addr; TYPE_1__ regs; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D0 ; 
 int PSB_PCIx_MSI_ADDR_LOC ; 
 int PSB_PCIx_MSI_DATA_LOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct pci_dev*) ; 
 struct drm_device* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct pci_dev *pdev)
{
	struct drm_device *dev = FUNC2(pdev);
	struct drm_psb_private *dev_priv = dev->dev_private;
	int ret;

	if (!dev_priv->suspended)
		return true;

	FUNC4(pdev, PCI_D0);
	FUNC3(pdev);
	FUNC5(pdev, 0x5c, dev_priv->regs.saveBSM);
	FUNC5(pdev, 0xFC, dev_priv->regs.saveVBT);
	/* restoring MSI address and data in PCIx space */
	FUNC5(pdev, PSB_PCIx_MSI_ADDR_LOC, dev_priv->msi_addr);
	FUNC5(pdev, PSB_PCIx_MSI_DATA_LOC, dev_priv->msi_data);
	ret = FUNC1(pdev);

	if (ret != 0)
		FUNC0(&pdev->dev, "pci_enable failed: %d\n", ret);
	else
		dev_priv->suspended = false;
	return !dev_priv->suspended;
}