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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct intel_th {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_th*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NPKDSC_TSACT ; 
 int /*<<< orphan*/  PCI_REG_NPKDSC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tscu_enable ; 

__attribute__((used)) static void FUNC5(struct intel_th *th)
{
	struct pci_dev *pdev = FUNC4(th->dev);
	u32 npkdsc;
	int err;

	if (!FUNC0(th, tscu_enable))
		return;

	err = FUNC2(pdev, PCI_REG_NPKDSC, &npkdsc);
	if (!err) {
		npkdsc |= NPKDSC_TSACT;
		err = FUNC3(pdev, PCI_REG_NPKDSC, npkdsc);
	}

	if (err)
		FUNC1(&pdev->dev, "failed to read NPKDSC register\n");
}