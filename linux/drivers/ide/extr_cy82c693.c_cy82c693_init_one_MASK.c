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
struct pci_device_id {int dummy; } ;
struct pci_dev {int class; scalar_t__ devfn; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int ENODEV ; 
 int PCI_CLASS_STORAGE_IDE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  cy82c693_chipset ; 
 int FUNC1 (struct pci_dev*,struct pci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev,
			     const struct pci_device_id *id)
{
	struct pci_dev *dev2;
	int ret = -ENODEV;

	/* CY82C693 is more than only a IDE controller.
	   Function 1 is primary IDE channel, function 2 - secondary. */
	if ((dev->class >> 8) == PCI_CLASS_STORAGE_IDE &&
	    FUNC0(dev->devfn) == 1) {
		dev2 = FUNC3(dev->bus, dev->devfn + 1);
		ret = FUNC1(dev, dev2, &cy82c693_chipset, NULL);
		if (ret)
			FUNC2(dev2);
	}
	return ret;
}