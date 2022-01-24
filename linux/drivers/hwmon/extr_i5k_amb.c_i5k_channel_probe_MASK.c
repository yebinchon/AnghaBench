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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I5K_REG_CHAN0_PRESENCE_ADDR ; 
 int /*<<< orphan*/  I5K_REG_CHAN1_PRESENCE_ADDR ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(u16 *amb_present, unsigned long dev_id)
{
	struct pci_dev *pcidev;
	u16 val16;
	int res = -ENODEV;

	/* Copy the DIMM presence map for these two channels */
	pcidev = FUNC1(PCI_VENDOR_ID_INTEL, dev_id, NULL);
	if (!pcidev)
		return -ENODEV;

	if (FUNC2(pcidev, I5K_REG_CHAN0_PRESENCE_ADDR, &val16))
		goto out;
	amb_present[0] = val16;

	if (FUNC2(pcidev, I5K_REG_CHAN1_PRESENCE_ADDR, &val16))
		goto out;
	amb_present[1] = val16;

	res = 0;

out:
	FUNC0(pcidev);
	return res;
}