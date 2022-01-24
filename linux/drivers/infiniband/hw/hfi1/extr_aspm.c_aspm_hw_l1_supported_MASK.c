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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {TYPE_1__* bus; } ;
struct hfi1_devdata {struct pci_dev* pcidev; } ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_EXP_LNKCAP ; 
 scalar_t__ FUNC1 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct hfi1_devdata *dd)
{
	struct pci_dev *parent = dd->pcidev->bus->self;
	u32 up, dn;

	/*
	 * If the driver does not have access to the upstream component,
	 * it cannot support ASPM L1 at all.
	 */
	if (!parent)
		return false;

	FUNC2(dd->pcidev, PCI_EXP_LNKCAP, &dn);
	dn = FUNC0(dn);

	FUNC2(parent, PCI_EXP_LNKCAP, &up);
	up = FUNC0(up);

	/* ASPM works on A-step but is reported as not supported */
	return (!!dn || FUNC1(dd)) && !!up;
}