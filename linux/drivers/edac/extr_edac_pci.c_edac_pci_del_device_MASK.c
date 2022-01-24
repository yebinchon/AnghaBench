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
struct edac_pci_ctl_info {int /*<<< orphan*/  ctl_name; int /*<<< orphan*/  mod_name; int /*<<< orphan*/  pci_idx; int /*<<< orphan*/  work; scalar_t__ edac_check; int /*<<< orphan*/  op_state; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDAC_PCI ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  OP_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct edac_pci_ctl_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct edac_pci_ctl_info*) ; 
 int /*<<< orphan*/  edac_pci_ctls_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct edac_pci_ctl_info* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct edac_pci_ctl_info *FUNC8(struct device *dev)
{
	struct edac_pci_ctl_info *pci;

	FUNC1(0, "\n");

	FUNC6(&edac_pci_ctls_mutex);

	/* ensure the control struct is on the global list
	 * if not, then leave
	 */
	pci = FUNC5(dev);
	if (pci  == NULL) {
		FUNC7(&edac_pci_ctls_mutex);
		return NULL;
	}

	pci->op_state = OP_OFFLINE;

	FUNC0(pci);

	FUNC7(&edac_pci_ctls_mutex);

	if (pci->edac_check)
		FUNC4(&pci->work);

	FUNC3(KERN_INFO, EDAC_PCI,
		"Removed device %d for %s %s: DEV %s\n",
		pci->pci_idx, pci->mod_name, pci->ctl_name, FUNC2(pci));

	return pci;
}