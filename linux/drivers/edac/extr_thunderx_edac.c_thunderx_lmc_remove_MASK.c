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
struct thunderx_lmc {scalar_t__ regs; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct mem_ctl_info {struct thunderx_lmc* pvt_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  LMC_INT_ENA_ALL ; 
 scalar_t__ LMC_INT_ENA_W1C ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_ctl_info*) ; 
 struct mem_ctl_info* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	struct mem_ctl_info *mci = FUNC2(pdev);
	struct thunderx_lmc *lmc = mci->pvt_info;

	FUNC3(LMC_INT_ENA_ALL, lmc->regs + LMC_INT_ENA_W1C);

	FUNC0(&pdev->dev);
	FUNC1(mci);
}