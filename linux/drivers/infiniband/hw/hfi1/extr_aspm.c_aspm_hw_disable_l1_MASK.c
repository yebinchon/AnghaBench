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
struct pci_dev {TYPE_1__* bus; } ;
struct hfi1_devdata {struct pci_dev* pcidev; } ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXP_LNKCTL ; 
 int /*<<< orphan*/  PCI_EXP_LNKCTL_ASPMC ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct hfi1_devdata *dd)
{
	struct pci_dev *parent = dd->pcidev->bus->self;

	/* Disable ASPM L1 first in downstream component and then upstream */
	FUNC0(dd->pcidev, PCI_EXP_LNKCTL,
					   PCI_EXP_LNKCTL_ASPMC, 0x0);
	if (parent)
		FUNC0(parent, PCI_EXP_LNKCTL,
						   PCI_EXP_LNKCTL_ASPMC, 0x0);
}