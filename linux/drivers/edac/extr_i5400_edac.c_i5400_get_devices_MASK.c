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
struct pci_dev {int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; int /*<<< orphan*/  devfn; } ;
struct mem_ctl_info {struct i5400_pvt* pvt_info; } ;
struct i5400_pvt {scalar_t__ maxch; struct pci_dev* branchmap_werrors; struct pci_dev* fsb_error_regs; struct pci_dev* branch_0; int /*<<< orphan*/ * branch_1; struct pci_dev* system_address; } ;

/* Variables and functions */
 scalar_t__ CHANNELS_PER_BRANCH ; 
 int ENODEV ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_5400_ERR ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_5400_FBD0 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_5400_FBD1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC6(struct mem_ctl_info *mci, int dev_idx)
{
	struct i5400_pvt *pvt;
	struct pci_dev *pdev;

	pvt = mci->pvt_info;
	pvt->branchmap_werrors = NULL;
	pvt->fsb_error_regs = NULL;
	pvt->branch_0 = NULL;
	pvt->branch_1 = NULL;

	/* Attempt to 'get' the MCH register we want */
	pdev = NULL;
	while (1) {
		pdev = FUNC4(PCI_VENDOR_ID_INTEL,
				      PCI_DEVICE_ID_INTEL_5400_ERR, pdev);
		if (!pdev) {
			/* End of list, leave */
			FUNC2(KERN_ERR,
				"'system address,Process Bus' "
				"device not found:"
				"vendor 0x%x device 0x%x ERR func 1 "
				"(broken BIOS?)\n",
				PCI_VENDOR_ID_INTEL,
				PCI_DEVICE_ID_INTEL_5400_ERR);
			return -ENODEV;
		}

		/* Store device 16 func 1 */
		if (FUNC0(pdev->devfn) == 1)
			break;
	}
	pvt->branchmap_werrors = pdev;

	pdev = NULL;
	while (1) {
		pdev = FUNC4(PCI_VENDOR_ID_INTEL,
				      PCI_DEVICE_ID_INTEL_5400_ERR, pdev);
		if (!pdev) {
			/* End of list, leave */
			FUNC2(KERN_ERR,
				"'system address,Process Bus' "
				"device not found:"
				"vendor 0x%x device 0x%x ERR func 2 "
				"(broken BIOS?)\n",
				PCI_VENDOR_ID_INTEL,
				PCI_DEVICE_ID_INTEL_5400_ERR);

			FUNC3(pvt->branchmap_werrors);
			return -ENODEV;
		}

		/* Store device 16 func 2 */
		if (FUNC0(pdev->devfn) == 2)
			break;
	}
	pvt->fsb_error_regs = pdev;

	FUNC1(1, "System Address, processor bus- PCI Bus ID: %s  %x:%x\n",
		 FUNC5(pvt->system_address),
		 pvt->system_address->vendor, pvt->system_address->device);
	FUNC1(1, "Branchmap, control and errors - PCI Bus ID: %s  %x:%x\n",
		 FUNC5(pvt->branchmap_werrors),
		 pvt->branchmap_werrors->vendor,
		 pvt->branchmap_werrors->device);
	FUNC1(1, "FSB Error Regs - PCI Bus ID: %s  %x:%x\n",
		 FUNC5(pvt->fsb_error_regs),
		 pvt->fsb_error_regs->vendor, pvt->fsb_error_regs->device);

	pvt->branch_0 = FUNC4(PCI_VENDOR_ID_INTEL,
				       PCI_DEVICE_ID_INTEL_5400_FBD0, NULL);
	if (!pvt->branch_0) {
		FUNC2(KERN_ERR,
			"MC: 'BRANCH 0' device not found:"
			"vendor 0x%x device 0x%x Func 0 (broken BIOS?)\n",
			PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_5400_FBD0);

		FUNC3(pvt->fsb_error_regs);
		FUNC3(pvt->branchmap_werrors);
		return -ENODEV;
	}

	/* If this device claims to have more than 2 channels then
	 * fetch Branch 1's information
	 */
	if (pvt->maxch < CHANNELS_PER_BRANCH)
		return 0;

	pvt->branch_1 = FUNC4(PCI_VENDOR_ID_INTEL,
				       PCI_DEVICE_ID_INTEL_5400_FBD1, NULL);
	if (!pvt->branch_1) {
		FUNC2(KERN_ERR,
			"MC: 'BRANCH 1' device not found:"
			"vendor 0x%x device 0x%x Func 0 "
			"(broken BIOS?)\n",
			PCI_VENDOR_ID_INTEL,
			PCI_DEVICE_ID_INTEL_5400_FBD1);

		FUNC3(pvt->branch_0);
		FUNC3(pvt->fsb_error_regs);
		FUNC3(pvt->branchmap_werrors);
		return -ENODEV;
	}

	return 0;
}