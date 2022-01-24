#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int SMB_STS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_2__*) ; 
 TYPE_2__ sis630_adapter ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 int smbus_base ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev, const struct pci_device_id *id)
{
	if (FUNC2(dev)) {
		FUNC0(&dev->dev,
			"SIS630 compatible bus not detected, "
			"module not inserted.\n");
		return -ENODEV;
	}

	/* set up the sysfs linkage to our parent device */
	sis630_adapter.dev.parent = &dev->dev;

	FUNC3(sis630_adapter.name, sizeof(sis630_adapter.name),
		 "SMBus SIS630 adapter at %04x", smbus_base + SMB_STS);

	return FUNC1(&sis630_adapter);
}