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
struct dw_edma_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dw_edma_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct dw_edma_chip* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*,int) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	struct dw_edma_chip *chip = FUNC2(pdev);
	int err;

	/* Stopping eDMA driver */
	err = FUNC0(chip);
	if (err)
		FUNC3(pdev, "can't remove device properly: %d\n", err);

	/* Freeing IRQs */
	FUNC1(pdev);
}