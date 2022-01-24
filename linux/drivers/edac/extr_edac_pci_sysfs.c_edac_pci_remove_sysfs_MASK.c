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
struct edac_pci_ctl_info {int /*<<< orphan*/  kobj; int /*<<< orphan*/  pci_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDAC_PCI_SYMLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct edac_pci_ctl_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(struct edac_pci_ctl_info *pci)
{
	FUNC0(0, "index=%d\n", pci->pci_idx);

	/* Remove the symlink */
	FUNC3(&pci->kobj, EDAC_PCI_SYMLINK);

	/* remove this PCI instance's sysfs entries */
	FUNC2(pci);

	/* Call the main unregister function, which will determine
	 * if this 'pci' is the last instance.
	 * If it is, the main kobject will be unregistered as a result
	 */
	FUNC0(0, "calling edac_pci_main_kobj_teardown()\n");
	FUNC1();
}