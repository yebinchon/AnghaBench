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
struct ioatdma_device {int /*<<< orphan*/ * dca; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ioatdma_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct ioatdma_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct ioatdma_device *device = FUNC4(pdev);

	if (!device)
		return;

	FUNC0(&pdev->dev, "Removing dma and dca services\n");
	if (device->dca) {
		FUNC5(device->dca, &pdev->dev);
		FUNC1(device->dca);
		device->dca = NULL;
	}

	FUNC3(pdev);
	FUNC2(device);
}