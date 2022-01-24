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
struct efa_com_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EFA_REGS_RESET_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct efa_com_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct efa_com_dev*) ; 
 int FUNC4 (struct efa_com_dev*) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct efa_com_dev *edev, struct pci_dev *pdev)
{
	int dma_width;
	int err;

	err = FUNC2(edev, EFA_REGS_RESET_NORMAL);
	if (err)
		return err;

	err = FUNC4(edev);
	if (err)
		return err;

	dma_width = FUNC3(edev);
	if (dma_width < 0) {
		err = dma_width;
		return err;
	}

	err = FUNC6(pdev, FUNC0(dma_width));
	if (err) {
		FUNC1(&pdev->dev, "pci_set_dma_mask failed %d\n", err);
		return err;
	}

	err = FUNC5(pdev, FUNC0(dma_width));
	if (err) {
		FUNC1(&pdev->dev,
			"err_pci_set_consistent_dma_mask failed %d\n",
			err);
		return err;
	}

	return 0;
}