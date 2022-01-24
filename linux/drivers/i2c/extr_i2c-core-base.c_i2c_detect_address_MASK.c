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
struct TYPE_2__ {char* name; } ;
struct i2c_driver {int (* detect ) (struct i2c_client*,struct i2c_board_info*) ;int /*<<< orphan*/  clients; TYPE_1__ driver; } ;
struct i2c_client {int addr; int /*<<< orphan*/  detected; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int addr; char* type; } ;
struct i2c_adapter {int class; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int I2C_CLASS_DEPRECATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_adapter*,int) ; 
 struct i2c_client* FUNC6 (struct i2c_adapter*,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_board_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct i2c_client*,struct i2c_board_info*) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *temp_client,
			      struct i2c_driver *driver)
{
	struct i2c_board_info info;
	struct i2c_adapter *adapter = temp_client->adapter;
	int addr = temp_client->addr;
	int err;

	/* Make sure the address is valid */
	err = FUNC3(addr);
	if (err) {
		FUNC2(&adapter->dev, "Invalid probe address 0x%02x\n",
			 addr);
		return err;
	}

	/* Skip if already in use (7 bit, no need to encode flags) */
	if (FUNC4(adapter, addr))
		return 0;

	/* Make sure there is something at this address */
	if (!FUNC5(adapter, addr))
		return 0;

	/* Finally call the custom detection function */
	FUNC8(&info, 0, sizeof(struct i2c_board_info));
	info.addr = addr;
	err = driver->detect(temp_client, &info);
	if (err) {
		/* -ENODEV is returned if the detection fails. We catch it
		   here as this isn't an error. */
		return err == -ENODEV ? 0 : err;
	}

	/* Consistency check */
	if (info.type[0] == '\0') {
		FUNC1(&adapter->dev,
			"%s detection function provided no name for 0x%x\n",
			driver->driver.name, addr);
	} else {
		struct i2c_client *client;

		/* Detection succeeded, instantiate the device */
		if (adapter->class & I2C_CLASS_DEPRECATED)
			FUNC2(&adapter->dev,
				"This adapter will soon drop class based instantiation of devices. "
				"Please make sure client 0x%02x gets instantiated by other means. "
				"Check 'Documentation/i2c/instantiating-devices.rst' for details.\n",
				info.addr);

		FUNC0(&adapter->dev, "Creating %s at 0x%02x\n",
			info.type, info.addr);
		client = FUNC6(adapter, &info);
		if (client)
			FUNC7(&client->detected, &driver->clients);
		else
			FUNC1(&adapter->dev, "Failed creating %s at 0x%02x\n",
				info.type, info.addr);
	}
	return 0;
}