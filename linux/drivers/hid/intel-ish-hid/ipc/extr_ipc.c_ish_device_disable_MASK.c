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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ishtp_device {int /*<<< orphan*/  dev_state; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISHTP_DEV_DISABLED ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ishtp_device*) ; 
 scalar_t__ FUNC2 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 

void	FUNC4(struct ishtp_device *dev)
{
	struct pci_dev *pdev = dev->pdev;

	if (!pdev)
		return;

	/* Disable dma communication between FW and host */
	if (FUNC2(dev)) {
		FUNC0(&pdev->dev,
			"Can't reset - stuck with DMA in-progress\n");
		return;
	}

	/* Put ISH to D3hot state for power saving */
	FUNC3(pdev, PCI_D3hot);

	dev->dev_state = ISHTP_DEV_DISABLED;
	FUNC1(dev);
}