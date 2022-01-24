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
struct pci_dev {int dummy; } ;
struct ide_port_info {int /*<<< orphan*/  host_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDE_HFLAG_NO_UNMASK_IRQS ; 
 int /*<<< orphan*/  IDE_HFLAG_SERIALIZE ; 
 int FUNC0 (struct pci_dev*,struct ide_port_info*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct pci_dev*) ; 
 struct ide_port_info rz1000_chipset ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *dev, const struct pci_device_id *id)
{
	struct ide_port_info d = rz1000_chipset;
	int rc;

	rc = FUNC1(dev);
	if (rc)
		return rc;

	if (FUNC2(dev)) {
		d.host_flags |= IDE_HFLAG_SERIALIZE;
		d.host_flags |= IDE_HFLAG_NO_UNMASK_IRQS;
	}

	return FUNC0(dev, &d, NULL);
}