#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct qib_devdata {struct pci_dev* pcidev; } ;
struct pci_dev {int pcie_mpss; TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,char*) ; 
 int qib_pcie_caps ; 

__attribute__((used)) static void FUNC8(struct qib_devdata *dd)
{
	struct pci_dev *parent;
	u16 rc_mpss, rc_mps, ep_mpss, ep_mps;
	u16 rc_mrrs, ep_mrrs, max_mrrs;

	/* Find out supported and configured values for parent (root) */
	parent = dd->pcidev->bus->self;
	if (!FUNC2(parent->bus)) {
		FUNC7(dd->pcidev, "Parent not root\n");
		return;
	}

	if (!FUNC1(parent) || !FUNC1(dd->pcidev))
		return;

	rc_mpss = parent->pcie_mpss;
	rc_mps = FUNC0(FUNC3(parent)) - 8;
	/* Find out supported and configured values for endpoint (us) */
	ep_mpss = dd->pcidev->pcie_mpss;
	ep_mps = FUNC0(FUNC3(dd->pcidev)) - 8;

	/* Find max payload supported by root, endpoint */
	if (rc_mpss > ep_mpss)
		rc_mpss = ep_mpss;

	/* If Supported greater than limit in module param, limit it */
	if (rc_mpss > (qib_pcie_caps & 7))
		rc_mpss = qib_pcie_caps & 7;
	/* If less than (allowed, supported), bump root payload */
	if (rc_mpss > rc_mps) {
		rc_mps = rc_mpss;
		FUNC5(parent, 128 << rc_mps);
	}
	/* If less than (allowed, supported), bump endpoint payload */
	if (rc_mpss > ep_mps) {
		ep_mps = rc_mpss;
		FUNC5(dd->pcidev, 128 << ep_mps);
	}

	/*
	 * Now the Read Request size.
	 * No field for max supported, but PCIe spec limits it to 4096,
	 * which is code '5' (log2(4096) - 7)
	 */
	max_mrrs = 5;
	if (max_mrrs > ((qib_pcie_caps >> 4) & 7))
		max_mrrs = (qib_pcie_caps >> 4) & 7;

	max_mrrs = 128 << max_mrrs;
	rc_mrrs = FUNC4(parent);
	ep_mrrs = FUNC4(dd->pcidev);

	if (max_mrrs > rc_mrrs) {
		rc_mrrs = max_mrrs;
		FUNC6(parent, rc_mrrs);
	}
	if (max_mrrs > ep_mrrs) {
		ep_mrrs = max_mrrs;
		FUNC6(dd->pcidev, ep_mrrs);
	}
}