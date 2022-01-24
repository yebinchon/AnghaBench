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
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  devfn; int /*<<< orphan*/  dev; } ;
struct dw_dma_chip_pdata {int (* probe ) (struct dw_dma_chip*) ;struct dw_dma_chip* chip; int /*<<< orphan*/  pdata; } ;
struct dw_dma_chip {int /*<<< orphan*/  pdata; int /*<<< orphan*/  irq; int /*<<< orphan*/  regs; int /*<<< orphan*/  id; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct dw_dma_chip_pdata* FUNC2 (int /*<<< orphan*/ *,struct dw_dma_chip_pdata const*,int,int /*<<< orphan*/ ) ; 
 struct dw_dma_chip* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,struct dw_dma_chip_pdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (struct pci_dev*) ; 
 int FUNC13 (struct dw_dma_chip*) ; 

__attribute__((used)) static int FUNC14(struct pci_dev *pdev, const struct pci_device_id *pid)
{
	const struct dw_dma_chip_pdata *drv_data = (void *)pid->driver_data;
	struct dw_dma_chip_pdata *data;
	struct dw_dma_chip *chip;
	int ret;

	ret = FUNC10(pdev);
	if (ret)
		return ret;

	ret = FUNC11(pdev, 1 << 0, FUNC4(pdev));
	if (ret) {
		FUNC1(&pdev->dev, "I/O memory remapping failed\n");
		return ret;
	}

	FUNC8(pdev);
	FUNC9(pdev);

	ret = FUNC6(pdev, FUNC0(32));
	if (ret)
		return ret;

	ret = FUNC5(pdev, FUNC0(32));
	if (ret)
		return ret;

	data = FUNC2(&pdev->dev, drv_data, sizeof(*drv_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	chip = FUNC3(&pdev->dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->dev = &pdev->dev;
	chip->id = pdev->devfn;
	chip->regs = FUNC12(pdev)[0];
	chip->irq = pdev->irq;
	chip->pdata = data->pdata;

	data->chip = chip;

	ret = data->probe(chip);
	if (ret)
		return ret;

	FUNC7(pdev, data);

	return 0;
}