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
struct pci_dev {int dummy; } ;
struct hsu_dma_chip {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hsu_dma_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct hsu_dma_chip*) ; 
 struct hsu_dma_chip* FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	struct hsu_dma_chip *chip = FUNC2(pdev);

	FUNC0(chip->irq, chip);
	FUNC1(chip);
}