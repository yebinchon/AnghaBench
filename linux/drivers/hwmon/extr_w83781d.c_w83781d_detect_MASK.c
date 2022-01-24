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
struct w83781d_data {int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  W83781D_REG_BANK ; 
 int /*<<< orphan*/  W83781D_REG_CHIPMAN ; 
 int /*<<< orphan*/  W83781D_REG_CONFIG ; 
 int /*<<< orphan*/  W83781D_REG_I2C_ADDR ; 
 int /*<<< orphan*/  W83781D_REG_WCHIPID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct i2c_client*,int) ; 
 struct w83781d_data* FUNC8 () ; 

__attribute__((used)) static int
FUNC9(struct i2c_client *client, struct i2c_board_info *info)
{
	int val1, val2;
	struct w83781d_data *isa = FUNC8();
	struct i2c_adapter *adapter = client->adapter;
	int address = client->addr;
	const char *client_name;
	enum vendor { winbond, asus } vendid;

	if (!FUNC1(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	/*
	 * We block updates of the ISA device to minimize the risk of
	 * concurrent access to the same W83781D chip through different
	 * interfaces.
	 */
	if (isa)
		FUNC4(&isa->update_lock);

	if (FUNC2(client, W83781D_REG_CONFIG) & 0x80) {
		FUNC0(&adapter->dev,
			"Detection of w83781d chip failed at step 3\n");
		goto err_nodev;
	}

	val1 = FUNC2(client, W83781D_REG_BANK);
	val2 = FUNC2(client, W83781D_REG_CHIPMAN);
	/* Check for Winbond or Asus ID if in bank 0 */
	if (!(val1 & 0x07) &&
	    ((!(val1 & 0x80) && val2 != 0xa3 && val2 != 0xc3) ||
	     ((val1 & 0x80) && val2 != 0x5c && val2 != 0x12))) {
		FUNC0(&adapter->dev,
			"Detection of w83781d chip failed at step 4\n");
		goto err_nodev;
	}
	/*
	 * If Winbond SMBus, check address at 0x48.
	 * Asus doesn't support, except for as99127f rev.2
	 */
	if ((!(val1 & 0x80) && val2 == 0xa3) ||
	    ((val1 & 0x80) && val2 == 0x5c)) {
		if (FUNC2(client, W83781D_REG_I2C_ADDR)
		    != address) {
			FUNC0(&adapter->dev,
				"Detection of w83781d chip failed at step 5\n");
			goto err_nodev;
		}
	}

	/* Put it now into bank 0 and Vendor ID High Byte */
	FUNC3(client, W83781D_REG_BANK,
		(FUNC2(client, W83781D_REG_BANK)
		 & 0x78) | 0x80);

	/* Get the vendor ID */
	val2 = FUNC2(client, W83781D_REG_CHIPMAN);
	if (val2 == 0x5c)
		vendid = winbond;
	else if (val2 == 0x12)
		vendid = asus;
	else {
		FUNC0(&adapter->dev,
			"w83781d chip vendor is neither Winbond nor Asus\n");
		goto err_nodev;
	}

	/* Determine the chip type. */
	val1 = FUNC2(client, W83781D_REG_WCHIPID);
	if ((val1 == 0x10 || val1 == 0x11) && vendid == winbond)
		client_name = "w83781d";
	else if (val1 == 0x30 && vendid == winbond)
		client_name = "w83782d";
	else if (val1 == 0x40 && vendid == winbond && address == 0x2d)
		client_name = "w83783s";
	else if (val1 == 0x31)
		client_name = "as99127f";
	else
		goto err_nodev;

	if (val1 <= 0x30 && FUNC7(client, val1)) {
		FUNC0(&adapter->dev,
			"Device at 0x%02x appears to be the same as ISA device\n",
			address);
		goto err_nodev;
	}

	if (isa)
		FUNC5(&isa->update_lock);

	FUNC6(info->type, client_name, I2C_NAME_SIZE);

	return 0;

 err_nodev:
	if (isa)
		FUNC5(&isa->update_lock);
	return -ENODEV;
}