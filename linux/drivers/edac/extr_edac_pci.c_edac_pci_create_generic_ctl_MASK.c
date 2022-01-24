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
struct edac_pci_gen_data {scalar_t__ edac_idx; } ;
struct edac_pci_ctl_info {char const* mod_name; int /*<<< orphan*/  edac_check; int /*<<< orphan*/  ctl_name; int /*<<< orphan*/  dev_name; struct device* dev; struct edac_pci_gen_data* pvt_info; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ EDAC_OPSTATE_POLL ; 
 int /*<<< orphan*/  EDAC_PCI_GENCTL_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct edac_pci_ctl_info*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ edac_op_state ; 
 scalar_t__ FUNC2 (struct edac_pci_ctl_info*,scalar_t__) ; 
 struct edac_pci_ctl_info* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct edac_pci_ctl_info*) ; 
 int /*<<< orphan*/  edac_pci_generic_check ; 
 int /*<<< orphan*/  edac_pci_idx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

struct edac_pci_ctl_info *FUNC7(struct device *dev,
						const char *mod_name)
{
	struct edac_pci_ctl_info *pci;
	struct edac_pci_gen_data *pdata;

	pci = FUNC3(sizeof(*pdata), EDAC_PCI_GENCTL_NAME);
	if (!pci)
		return NULL;

	pdata = pci->pvt_info;
	pci->dev = dev;
	FUNC0(pci->dev, pci);
	pci->dev_name = FUNC5(FUNC6(dev));

	pci->mod_name = mod_name;
	pci->ctl_name = EDAC_PCI_GENCTL_NAME;
	if (edac_op_state == EDAC_OPSTATE_POLL)
		pci->edac_check = edac_pci_generic_check;

	pdata->edac_idx = edac_pci_idx++;

	if (FUNC2(pci, pdata->edac_idx) > 0) {
		FUNC1(3, "failed edac_pci_add_device()\n");
		FUNC4(pci);
		return NULL;
	}

	return pci;
}