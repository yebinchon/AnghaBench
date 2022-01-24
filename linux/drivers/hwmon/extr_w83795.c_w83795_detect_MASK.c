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
struct i2c_client {unsigned short addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  W83795_REG_BANKSEL ; 
 int /*<<< orphan*/  W83795_REG_CHIPID ; 
 int /*<<< orphan*/  W83795_REG_CONFIG ; 
 int W83795_REG_CONFIG_CONFIG48 ; 
 int /*<<< orphan*/  W83795_REG_I2C_ADDR ; 
 int /*<<< orphan*/  W83795_REG_VENDORID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned short,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,char,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			 struct i2c_board_info *info)
{
	int bank, vendor_id, device_id, expected, i2c_addr, config;
	struct i2c_adapter *adapter = client->adapter;
	unsigned short address = client->addr;
	const char *chip_name;

	if (!FUNC2(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;
	bank = FUNC3(client, W83795_REG_BANKSEL);
	if (bank < 0 || (bank & 0x7c)) {
		FUNC0(&adapter->dev,
			"w83795: Detection failed at addr 0x%02hx, check %s\n",
			address, "bank");
		return -ENODEV;
	}

	/* Check Nuvoton vendor ID */
	vendor_id = FUNC3(client, W83795_REG_VENDORID);
	expected = bank & 0x80 ? 0x5c : 0xa3;
	if (vendor_id != expected) {
		FUNC0(&adapter->dev,
			"w83795: Detection failed at addr 0x%02hx, check %s\n",
			address, "vendor id");
		return -ENODEV;
	}

	/* Check device ID */
	device_id = FUNC6(client) |
		    (FUNC3(client, W83795_REG_CHIPID) << 8);
	if ((device_id >> 4) != 0x795) {
		FUNC0(&adapter->dev,
			"w83795: Detection failed at addr 0x%02hx, check %s\n",
			address, "device id\n");
		return -ENODEV;
	}

	/*
	 * If Nuvoton chip, address of chip and W83795_REG_I2C_ADDR
	 * should match
	 */
	if ((bank & 0x07) == 0) {
		i2c_addr = FUNC3(client,
						    W83795_REG_I2C_ADDR);
		if ((i2c_addr & 0x7f) != address) {
			FUNC0(&adapter->dev,
				"w83795: Detection failed at addr 0x%02hx, "
				"check %s\n", address, "i2c addr");
			return -ENODEV;
		}
	}

	/*
	 * Check 795 chip type: 795G or 795ADG
	 * Usually we don't write to chips during detection, but here we don't
	 * quite have the choice; hopefully it's OK, we are about to return
	 * success anyway
	 */
	if ((bank & 0x07) != 0)
		FUNC4(client, W83795_REG_BANKSEL,
					  bank & ~0x07);
	config = FUNC3(client, W83795_REG_CONFIG);
	if (config & W83795_REG_CONFIG_CONFIG48)
		chip_name = "w83795adg";
	else
		chip_name = "w83795g";

	FUNC5(info->type, chip_name, I2C_NAME_SIZE);
	FUNC1(&adapter->dev, "Found %s rev. %c at 0x%02hx\n", chip_name,
		 'A' + (device_id & 0xf), address);

	return 0;
}