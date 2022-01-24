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
typedef  size_t u8 ;
struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int /*<<< orphan*/  devfn; } ;
struct ide_port_info {int /*<<< orphan*/  host_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDE_HFLAG_CLEAR_SIMPLEX ; 
 int /*<<< orphan*/  IDE_HFLAG_NON_BOOTABLE ; 
 int /*<<< orphan*/  IDE_HFLAG_SINGLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pci_dev*,struct ide_port_info*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 struct ide_port_info* serverworks_chipsets ; 

__attribute__((used)) static int FUNC3(struct pci_dev *dev, const struct pci_device_id *id)
{
	struct ide_port_info d;
	u8 idx = id->driver_data;

	d = serverworks_chipsets[idx];

	if (idx == 1)
		d.host_flags |= IDE_HFLAG_CLEAR_SIMPLEX;
	else if (idx == 2 || idx == 3) {
		if ((FUNC0(dev->devfn) & 1) == 0) {
			if (FUNC2(dev, 0) != 0x01f1)
				d.host_flags |= IDE_HFLAG_NON_BOOTABLE;
			d.host_flags |= IDE_HFLAG_SINGLE;
		} else
			d.host_flags &= ~IDE_HFLAG_SINGLE;
	}

	return FUNC1(dev, &d, NULL);
}