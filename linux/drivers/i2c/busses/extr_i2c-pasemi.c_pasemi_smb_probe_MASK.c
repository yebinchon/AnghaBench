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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_6__ {int class; TYPE_1__ dev; struct pasemi_smbus* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; int /*<<< orphan*/  owner; } ;
struct pasemi_smbus {int /*<<< orphan*/  size; int /*<<< orphan*/  base; TYPE_3__ adapter; struct pci_dev* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CLK_100K_DIV ; 
 int CTL_CLK_M ; 
 int CTL_MRR ; 
 int CTL_MTR ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_CLASS_HWMON ; 
 int I2C_CLASS_SPD ; 
 int IORESOURCE_IO ; 
 int /*<<< orphan*/  REG_CTL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct pasemi_smbus*) ; 
 struct pasemi_smbus* FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__ pasemi_smb_driver ; 
 int FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,struct pasemi_smbus*) ; 
 int /*<<< orphan*/  FUNC7 (struct pasemi_smbus*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smbus_algorithm ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *dev,
				      const struct pci_device_id *id)
{
	struct pasemi_smbus *smbus;
	int error;

	if (!(FUNC3(dev, 0) & IORESOURCE_IO))
		return -ENODEV;

	smbus = FUNC2(sizeof(struct pasemi_smbus), GFP_KERNEL);
	if (!smbus)
		return -ENOMEM;

	smbus->dev = dev;
	smbus->base = FUNC5(dev, 0);
	smbus->size = FUNC4(dev, 0);

	if (!FUNC9(smbus->base, smbus->size,
			    pasemi_smb_driver.name)) {
		error = -EBUSY;
		goto out_kfree;
	}

	smbus->adapter.owner = THIS_MODULE;
	FUNC10(smbus->adapter.name, sizeof(smbus->adapter.name),
		 "PA Semi SMBus adapter at 0x%lx", smbus->base);
	smbus->adapter.class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
	smbus->adapter.algo = &smbus_algorithm;
	smbus->adapter.algo_data = smbus;

	/* set up the sysfs linkage to our parent device */
	smbus->adapter.dev.parent = &dev->dev;

	FUNC7(smbus, REG_CTL, (CTL_MTR | CTL_MRR |
		  (CLK_100K_DIV & CTL_CLK_M)));

	error = FUNC0(&smbus->adapter);
	if (error)
		goto out_release_region;

	FUNC6(dev, smbus);

	return 0;

 out_release_region:
	FUNC8(smbus->base, smbus->size);
 out_kfree:
	FUNC1(smbus);
	return error;
}