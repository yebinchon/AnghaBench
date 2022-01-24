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
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int) ; 

__attribute__((used)) static pci_ers_result_t FUNC7(struct pci_dev *pdev)
{
	pci_ers_result_t result = PCI_ERS_RESULT_RECOVERED;

	FUNC0(&pdev->dev, "%s post reset handling\n", DRV_NAME);

	if (FUNC2(pdev) < 0) {
		FUNC1(&pdev->dev,
			"Failed to enable PCIe device after reset.\n");
		result = PCI_ERS_RESULT_DISCONNECT;
	} else {
		FUNC5(pdev);
		FUNC3(pdev);
		FUNC4(pdev);
		FUNC6(pdev, false);
	}

	return result;
}