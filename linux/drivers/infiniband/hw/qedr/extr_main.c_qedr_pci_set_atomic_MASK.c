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
struct qedr_dev {int /*<<< orphan*/  atomic_cap; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IB_ATOMIC_GLOB ; 
 int /*<<< orphan*/  IB_ATOMIC_NONE ; 
 int /*<<< orphan*/  PCI_EXP_DEVCAP2_ATOMIC_COMP64 ; 
 int /*<<< orphan*/  QEDR_MSG_INIT ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct qedr_dev *dev, struct pci_dev *pdev)
{
	int rc = FUNC1(pdev,
					       PCI_EXP_DEVCAP2_ATOMIC_COMP64);

	if (rc) {
		dev->atomic_cap = IB_ATOMIC_NONE;
		FUNC0(dev, QEDR_MSG_INIT, "Atomic capability disabled\n");
	} else {
		dev->atomic_cap = IB_ATOMIC_GLOB;
		FUNC0(dev, QEDR_MSG_INIT, "Atomic capability enabled\n");
	}
}