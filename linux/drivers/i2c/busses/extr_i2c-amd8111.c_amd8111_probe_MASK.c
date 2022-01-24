#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/ * resource; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_5__ {int class; TYPE_1__ dev; struct amd_smbus* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; int /*<<< orphan*/  owner; } ;
struct amd_smbus {int base; int /*<<< orphan*/  size; TYPE_2__ adapter; struct pci_dev* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_PCI_MISC ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_CLASS_HWMON ; 
 int I2C_CLASS_SPD ; 
 int IORESOURCE_IO ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__ amd8111_driver ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct amd_smbus*) ; 
 struct amd_smbus* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,struct amd_smbus*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smbus_algorithm ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *dev, const struct pci_device_id *id)
{
	struct amd_smbus *smbus;
	int error;

	if (!(FUNC4(dev, 0) & IORESOURCE_IO))
		return -ENODEV;

	smbus = FUNC3(sizeof(struct amd_smbus), GFP_KERNEL);
	if (!smbus)
		return -ENOMEM;

	smbus->dev = dev;
	smbus->base = FUNC6(dev, 0);
	smbus->size = FUNC5(dev, 0);

	error = FUNC0(&dev->resource[0]);
	if (error) {
		error = -ENODEV;
		goto out_kfree;
	}

	if (!FUNC10(smbus->base, smbus->size, amd8111_driver.name)) {
		error = -EBUSY;
		goto out_kfree;
	}

	smbus->adapter.owner = THIS_MODULE;
	FUNC11(smbus->adapter.name, sizeof(smbus->adapter.name),
		"SMBus2 AMD8111 adapter at %04x", smbus->base);
	smbus->adapter.class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
	smbus->adapter.algo = &smbus_algorithm;
	smbus->adapter.algo_data = smbus;

	/* set up the sysfs linkage to our parent device */
	smbus->adapter.dev.parent = &dev->dev;

	FUNC8(smbus->dev, AMD_PCI_MISC, 0);
	error = FUNC1(&smbus->adapter);
	if (error)
		goto out_release_region;

	FUNC7(dev, smbus);
	return 0;

 out_release_region:
	FUNC9(smbus->base, smbus->size);
 out_kfree:
	FUNC2(smbus);
	return error;
}