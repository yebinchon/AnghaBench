#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_6__ {int class; TYPE_3__ dev; int /*<<< orphan*/  name; struct nforce2_smbus* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; } ;
struct nforce2_smbus {int base; int size; TYPE_2__ adapter; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int I2C_CLASS_HWMON ; 
 int I2C_CLASS_SPD ; 
 scalar_t__ PCIBIOS_SUCCESSFUL ; 
 int PCI_BASE_ADDRESS_IO_MASK ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int) ; 
 int FUNC3 (TYPE_2__*) ; 
 TYPE_1__ nforce2_driver ; 
 scalar_t__ FUNC4 (struct pci_dev*,int,int*) ; 
 int FUNC5 (struct pci_dev*,int) ; 
 int FUNC6 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smbus_algorithm ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static int FUNC10(struct pci_dev *dev, int bar, int alt_reg,
			     struct nforce2_smbus *smbus, const char *name)
{
	int error;

	smbus->base = FUNC6(dev, bar);
	if (smbus->base) {
		smbus->size = FUNC5(dev, bar);
	} else {
		/* Older incarnations of the device used non-standard BARs */
		u16 iobase;

		if (FUNC4(dev, alt_reg, &iobase)
		    != PCIBIOS_SUCCESSFUL) {
			FUNC1(&dev->dev, "Error reading PCI config for %s\n",
				name);
			return -EIO;
		}

		smbus->base = iobase & PCI_BASE_ADDRESS_IO_MASK;
		smbus->size = 64;
	}

	error = FUNC0(smbus->base, smbus->size,
				  nforce2_driver.name);
	if (error)
		return error;

	if (!FUNC8(smbus->base, smbus->size, nforce2_driver.name)) {
		FUNC1(&smbus->adapter.dev, "Error requesting region %02x .. %02X for %s\n",
			smbus->base, smbus->base+smbus->size-1, name);
		return -EBUSY;
	}
	smbus->adapter.owner = THIS_MODULE;
	smbus->adapter.class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
	smbus->adapter.algo = &smbus_algorithm;
	smbus->adapter.algo_data = smbus;
	smbus->adapter.dev.parent = &dev->dev;
	FUNC9(smbus->adapter.name, sizeof(smbus->adapter.name),
		"SMBus nForce2 adapter at %04x", smbus->base);

	error = FUNC3(&smbus->adapter);
	if (error) {
		FUNC7(smbus->base, smbus->size);
		return error;
	}
	FUNC2(&smbus->adapter.dev, "nForce2 SMBus adapter at %#x\n",
		smbus->base);
	return 0;
}