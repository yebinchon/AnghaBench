#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct i2c_piix4_adapdata {int class; unsigned short smba; int sb800_main; int port; int notify_imc; int /*<<< orphan*/  name; TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; } ;
struct i2c_adapter {int class; unsigned short smba; int sb800_main; int port; int notify_imc; int /*<<< orphan*/  name; TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_CLASS_HWMON ; 
 int I2C_CLASS_SPD ; 
 int /*<<< orphan*/  SMBIOSIZE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct i2c_piix4_adapdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_piix4_adapdata*,struct i2c_piix4_adapdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_piix4_adapdata*) ; 
 struct i2c_piix4_adapdata* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int piix4_port_shift_sb800 ; 
 int /*<<< orphan*/  piix4_smbus_algorithm_sb800 ; 
 int /*<<< orphan*/  FUNC7 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smbus_algorithm ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,char const*,unsigned short) ; 

__attribute__((used)) static int FUNC9(struct pci_dev *dev, unsigned short smba,
			     bool sb800_main, u8 port, bool notify_imc,
			     u8 hw_port_nr, const char *name,
			     struct i2c_adapter **padap)
{
	struct i2c_adapter *adap;
	struct i2c_piix4_adapdata *adapdata;
	int retval;

	adap = FUNC6(sizeof(*adap), GFP_KERNEL);
	if (adap == NULL) {
		FUNC7(smba, SMBIOSIZE);
		return -ENOMEM;
	}

	adap->owner = THIS_MODULE;
	adap->class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
	adap->algo = sb800_main ? &piix4_smbus_algorithm_sb800
				: &smbus_algorithm;

	adapdata = FUNC6(sizeof(*adapdata), GFP_KERNEL);
	if (adapdata == NULL) {
		FUNC5(adap);
		FUNC7(smba, SMBIOSIZE);
		return -ENOMEM;
	}

	adapdata->smba = smba;
	adapdata->sb800_main = sb800_main;
	adapdata->port = port << piix4_port_shift_sb800;
	adapdata->notify_imc = notify_imc;

	/* set up the sysfs linkage to our parent device */
	adap->dev.parent = &dev->dev;

	if (FUNC2(&dev->dev)) {
		FUNC1(&adap->dev,
				      FUNC0(&dev->dev),
				      hw_port_nr);
	}

	FUNC8(adap->name, sizeof(adap->name),
		"SMBus PIIX4 adapter%s at %04x", name, smba);

	FUNC4(adap, adapdata);

	retval = FUNC3(adap);
	if (retval) {
		FUNC5(adapdata);
		FUNC5(adap);
		FUNC7(smba, SMBIOSIZE);
		return retval;
	}

	*padap = adap;
	return 0;
}