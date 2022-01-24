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
 int SMB_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 TYPE_2__ sis5595_adapter ; 
 int sis5595_base ; 
 int /*<<< orphan*/  sis5595_pdev ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *dev, const struct pci_device_id *id)
{
	int err;

	if (FUNC4(dev)) {
		FUNC0(&dev->dev, "SIS5595 not detected, module not inserted.\n");
		return -ENODEV;
	}

	/* set up the sysfs linkage to our parent device */
	sis5595_adapter.dev.parent = &dev->dev;

	FUNC5(sis5595_adapter.name, sizeof(sis5595_adapter.name),
		 "SMBus SIS5595 adapter at %04x", sis5595_base + SMB_INDEX);
	err = FUNC1(&sis5595_adapter);
	if (err) {
		FUNC3(sis5595_base + SMB_INDEX, 2);
		return err;
	}

	/* Always return failure here.  This is to allow other drivers to bind
	 * to this pci device.  We don't really want to have control over the
	 * pci device, we only wanted to read as few register values from it.
	 */
	sis5595_pdev =  FUNC2(dev);
	return -ENODEV;
}