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
struct pci_dev {int pcie_mpss; TYPE_1__* bus; } ;
struct hfi1_devdata {struct pci_dev* pcidev; } ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int PCI_EXP_DEVCTL_EXT_TAG ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int hfi1_pcie_caps ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int) ; 

void FUNC10(struct hfi1_devdata *dd)
{
	struct pci_dev *parent;
	u16 rc_mpss, rc_mps, ep_mpss, ep_mps;
	u16 rc_mrrs, ep_mrrs, max_mrrs, ectl;
	int ret;

	/*
	 * Turn on extended tags in DevCtl in case the BIOS has turned it off
	 * to improve WFR SDMA bandwidth
	 */
	ret = FUNC4(dd->pcidev, PCI_EXP_DEVCTL, &ectl);
	if ((!ret) && !(ectl & PCI_EXP_DEVCTL_EXT_TAG)) {
		FUNC0(dd, "Enabling PCIe extended tags\n");
		ectl |= PCI_EXP_DEVCTL_EXT_TAG;
		ret = FUNC5(dd->pcidev,
						 PCI_EXP_DEVCTL, ectl);
		if (ret)
			FUNC0(dd, "Unable to write to PCI config\n");
	}
	/* Find out supported and configured values for parent (root) */
	parent = dd->pcidev->bus->self;
	/*
	 * The driver cannot perform the tuning if it does not have
	 * access to the upstream component.
	 */
	if (!parent) {
		FUNC0(dd, "Parent not found\n");
		return;
	}
	if (!FUNC3(parent->bus)) {
		FUNC0(dd, "Parent not root\n");
		return;
	}
	if (!FUNC2(parent)) {
		FUNC0(dd, "Parent is not PCI Express capable\n");
		return;
	}
	if (!FUNC2(dd->pcidev)) {
		FUNC0(dd, "PCI device is not PCI Express capable\n");
		return;
	}
	rc_mpss = parent->pcie_mpss;
	rc_mps = FUNC1(FUNC6(parent)) - 8;
	/* Find out supported and configured values for endpoint (us) */
	ep_mpss = dd->pcidev->pcie_mpss;
	ep_mps = FUNC1(FUNC6(dd->pcidev)) - 8;

	/* Find max payload supported by root, endpoint */
	if (rc_mpss > ep_mpss)
		rc_mpss = ep_mpss;

	/* If Supported greater than limit in module param, limit it */
	if (rc_mpss > (hfi1_pcie_caps & 7))
		rc_mpss = hfi1_pcie_caps & 7;
	/* If less than (allowed, supported), bump root payload */
	if (rc_mpss > rc_mps) {
		rc_mps = rc_mpss;
		FUNC8(parent, 128 << rc_mps);
	}
	/* If less than (allowed, supported), bump endpoint payload */
	if (rc_mpss > ep_mps) {
		ep_mps = rc_mpss;
		FUNC8(dd->pcidev, 128 << ep_mps);
	}

	/*
	 * Now the Read Request size.
	 * No field for max supported, but PCIe spec limits it to 4096,
	 * which is code '5' (log2(4096) - 7)
	 */
	max_mrrs = 5;
	if (max_mrrs > ((hfi1_pcie_caps >> 4) & 7))
		max_mrrs = (hfi1_pcie_caps >> 4) & 7;

	max_mrrs = 128 << max_mrrs;
	rc_mrrs = FUNC7(parent);
	ep_mrrs = FUNC7(dd->pcidev);

	if (max_mrrs > rc_mrrs) {
		rc_mrrs = max_mrrs;
		FUNC9(parent, rc_mrrs);
	}
	if (max_mrrs > ep_mrrs) {
		ep_mrrs = max_mrrs;
		FUNC9(dd->pcidev, ep_mrrs);
	}
}