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
 TYPE_2__ ali1535_adapter ; 
 int ali1535_offset ; 
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev, const struct pci_device_id *id)
{
	if (FUNC0(dev)) {
		FUNC1(&dev->dev,
			"ALI1535 not detected, module not inserted.\n");
		return -ENODEV;
	}

	/* set up the sysfs linkage to our parent device */
	ali1535_adapter.dev.parent = &dev->dev;

	FUNC3(ali1535_adapter.name, sizeof(ali1535_adapter.name),
		"SMBus ALI1535 adapter at %04x", ali1535_offset);
	return FUNC2(&ali1535_adapter);
}