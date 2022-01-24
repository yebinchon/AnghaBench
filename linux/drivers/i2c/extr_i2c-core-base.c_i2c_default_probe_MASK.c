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
typedef  union i2c_smbus_data {int dummy; } i2c_smbus_data ;
struct i2c_adapter {int class; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int I2C_CLASS_HWMON ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_QUICK ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_BYTE ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_SMBUS_BYTE ; 
 int /*<<< orphan*/  I2C_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_SMBUS_QUICK ; 
 int /*<<< orphan*/  I2C_SMBUS_READ ; 
 int /*<<< orphan*/  I2C_SMBUS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned short) ; 
 scalar_t__ FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_adapter*,unsigned short,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union i2c_smbus_data*) ; 

__attribute__((used)) static int FUNC3(struct i2c_adapter *adap, unsigned short addr)
{
	int err;
	union i2c_smbus_data dummy;

#ifdef CONFIG_X86
	if (addr == 0x73 && (adap->class & I2C_CLASS_HWMON)
	 && i2c_check_functionality(adap, I2C_FUNC_SMBUS_READ_BYTE_DATA))
		err = i2c_smbus_xfer(adap, addr, 0, I2C_SMBUS_READ, 0,
				     I2C_SMBUS_BYTE_DATA, &dummy);
	else
#endif
	if (!((addr & ~0x07) == 0x30 || (addr & ~0x0f) == 0x50)
	 && FUNC1(adap, I2C_FUNC_SMBUS_QUICK))
		err = FUNC2(adap, addr, 0, I2C_SMBUS_WRITE, 0,
				     I2C_SMBUS_QUICK, NULL);
	else if (FUNC1(adap, I2C_FUNC_SMBUS_READ_BYTE))
		err = FUNC2(adap, addr, 0, I2C_SMBUS_READ, 0,
				     I2C_SMBUS_BYTE, &dummy);
	else {
		FUNC0(&adap->dev, "No suitable probing method supported for address 0x%02X\n",
			 addr);
		err = -EOPNOTSUPP;
	}

	return err >= 0;
}