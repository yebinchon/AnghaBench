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
struct pci_dev {int /*<<< orphan*/  devfn; } ;
struct mem_ctl_info {struct i7300_pvt* pvt_info; } ;
struct i7300_pvt {void** pci_dev_2x_0_fbd_branch; TYPE_1__* pci_dev_16_2_fsb_err_regs; TYPE_1__* pci_dev_16_1_fsb_addr_map; TYPE_1__* pci_dev_16_0_fsb_ctlr; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_I7300_MCH_ERR ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_I7300_MCH_FB0 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_I7300_MCH_FB1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*) ; 
 void* FUNC4 (struct pci_dev*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct mem_ctl_info *mci)
{
	struct i7300_pvt *pvt;
	struct pci_dev *pdev;

	pvt = mci->pvt_info;

	/* Attempt to 'get' the MCH register we want */
	pdev = NULL;
	while ((pdev = FUNC5(PCI_VENDOR_ID_INTEL,
				      PCI_DEVICE_ID_INTEL_I7300_MCH_ERR,
				      pdev))) {
		/* Store device 16 funcs 1 and 2 */
		switch (FUNC0(pdev->devfn)) {
		case 1:
			if (!pvt->pci_dev_16_1_fsb_addr_map)
				pvt->pci_dev_16_1_fsb_addr_map =
							FUNC4(pdev);
			break;
		case 2:
			if (!pvt->pci_dev_16_2_fsb_err_regs)
				pvt->pci_dev_16_2_fsb_err_regs =
							FUNC4(pdev);
			break;
		}
	}

	if (!pvt->pci_dev_16_1_fsb_addr_map ||
	    !pvt->pci_dev_16_2_fsb_err_regs) {
		/* At least one device was not found */
		FUNC2(KERN_ERR,
			"'system address,Process Bus' device not found:"
			"vendor 0x%x device 0x%x ERR funcs (broken BIOS?)\n",
			PCI_VENDOR_ID_INTEL,
			PCI_DEVICE_ID_INTEL_I7300_MCH_ERR);
		goto error;
	}

	FUNC1(1, "System Address, processor bus- PCI Bus ID: %s  %x:%x\n",
		 FUNC6(pvt->pci_dev_16_0_fsb_ctlr),
		 pvt->pci_dev_16_0_fsb_ctlr->vendor,
		 pvt->pci_dev_16_0_fsb_ctlr->device);
	FUNC1(1, "Branchmap, control and errors - PCI Bus ID: %s  %x:%x\n",
		 FUNC6(pvt->pci_dev_16_1_fsb_addr_map),
		 pvt->pci_dev_16_1_fsb_addr_map->vendor,
		 pvt->pci_dev_16_1_fsb_addr_map->device);
	FUNC1(1, "FSB Error Regs - PCI Bus ID: %s  %x:%x\n",
		 FUNC6(pvt->pci_dev_16_2_fsb_err_regs),
		 pvt->pci_dev_16_2_fsb_err_regs->vendor,
		 pvt->pci_dev_16_2_fsb_err_regs->device);

	pvt->pci_dev_2x_0_fbd_branch[0] = FUNC5(PCI_VENDOR_ID_INTEL,
					    PCI_DEVICE_ID_INTEL_I7300_MCH_FB0,
					    NULL);
	if (!pvt->pci_dev_2x_0_fbd_branch[0]) {
		FUNC2(KERN_ERR,
			"MC: 'BRANCH 0' device not found:"
			"vendor 0x%x device 0x%x Func 0 (broken BIOS?)\n",
			PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_I7300_MCH_FB0);
		goto error;
	}

	pvt->pci_dev_2x_0_fbd_branch[1] = FUNC5(PCI_VENDOR_ID_INTEL,
					    PCI_DEVICE_ID_INTEL_I7300_MCH_FB1,
					    NULL);
	if (!pvt->pci_dev_2x_0_fbd_branch[1]) {
		FUNC2(KERN_ERR,
			"MC: 'BRANCH 1' device not found:"
			"vendor 0x%x device 0x%x Func 0 "
			"(broken BIOS?)\n",
			PCI_VENDOR_ID_INTEL,
			PCI_DEVICE_ID_INTEL_I7300_MCH_FB1);
		goto error;
	}

	return 0;

error:
	FUNC3(mci);
	return -ENODEV;
}