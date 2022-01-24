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
struct kobject {int dummy; } ;
struct edac_pci_ctl_info {int pci_idx; TYPE_1__* dev; struct kobject kobj; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDAC_PCI_SYMLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct edac_pci_ctl_info*,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct edac_pci_ctl_info*) ; 
 int FUNC5 (struct kobject*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(struct edac_pci_ctl_info *pci)
{
	int err;
	struct kobject *edac_kobj = &pci->kobj;

	FUNC0(0, "idx=%d\n", pci->pci_idx);

	/* create the top main EDAC PCI kobject, IF needed */
	err = FUNC2();
	if (err)
		return err;

	/* Create this instance's kobject under the MAIN kobject */
	err = FUNC1(pci, pci->pci_idx);
	if (err)
		goto unregister_cleanup;

	err = FUNC5(edac_kobj, &pci->dev->kobj, EDAC_PCI_SYMLINK);
	if (err) {
		FUNC0(0, "sysfs_create_link() returned err= %d\n", err);
		goto symlink_fail;
	}

	return 0;

	/* Error unwind stack */
symlink_fail:
	FUNC4(pci);

unregister_cleanup:
	FUNC3();

	return err;
}