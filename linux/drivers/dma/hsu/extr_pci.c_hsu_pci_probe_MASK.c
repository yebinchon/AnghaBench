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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hsu_dma_chip {int /*<<< orphan*/  irq; int /*<<< orphan*/  offset; int /*<<< orphan*/  length; int /*<<< orphan*/  regs; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HSU_PCI_CHAN_OFFSET ; 
 int /*<<< orphan*/  PCI_IRQ_ALL_TYPES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct hsu_dma_chip* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hsu_dma_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct hsu_dma_chip*) ; 
 int /*<<< orphan*/  hsu_pci_irq ; 
 int FUNC6 (struct pci_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,struct hsu_dma_chip*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int FUNC15 (struct pci_dev*) ; 
 int FUNC16 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (struct pci_dev*) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct hsu_dma_chip*) ; 

__attribute__((used)) static int FUNC19(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct hsu_dma_chip *chip;
	int ret;

	ret = FUNC15(pdev);
	if (ret)
		return ret;

	ret = FUNC16(pdev, FUNC0(0), FUNC8(pdev));
	if (ret) {
		FUNC2(&pdev->dev, "I/O memory remapping failed\n");
		return ret;
	}

	FUNC13(pdev);
	FUNC14(pdev);

	ret = FUNC11(pdev, FUNC1(32));
	if (ret)
		return ret;

	ret = FUNC10(pdev, FUNC1(32));
	if (ret)
		return ret;

	chip = FUNC3(&pdev->dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	ret = FUNC6(pdev, 1, 1, PCI_IRQ_ALL_TYPES);
	if (ret < 0)
		return ret;

	chip->dev = &pdev->dev;
	chip->regs = FUNC17(pdev)[0];
	chip->length = FUNC9(pdev, 0);
	chip->offset = HSU_PCI_CHAN_OFFSET;
	chip->irq = FUNC7(pdev, 0);

	ret = FUNC4(chip);
	if (ret)
		return ret;

	ret = FUNC18(chip->irq, hsu_pci_irq, 0, "hsu_dma_pci", chip);
	if (ret)
		goto err_register_irq;

	FUNC12(pdev, chip);

	return 0;

err_register_irq:
	FUNC5(chip);
	return ret;
}