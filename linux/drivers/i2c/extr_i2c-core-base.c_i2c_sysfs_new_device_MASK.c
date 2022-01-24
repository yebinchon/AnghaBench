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
struct i2c_client {int /*<<< orphan*/  detected; } ;
struct i2c_board_info {int addr; int /*<<< orphan*/  type; int /*<<< orphan*/  flags; } ;
struct i2c_adapter {int /*<<< orphan*/  userspace_clients_lock; int /*<<< orphan*/  userspace_clients; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int I2C_ADDR_OFFSET_SLAVE ; 
 int I2C_ADDR_OFFSET_TEN_BIT ; 
 int /*<<< orphan*/  I2C_CLIENT_SLAVE ; 
 int /*<<< orphan*/  I2C_CLIENT_TEN ; 
 int I2C_NAME_SIZE ; 
 scalar_t__ FUNC0 (struct i2c_client*) ; 
 size_t FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,char*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC4 (struct i2c_adapter*,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_board_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (char*,char*,int*,char*) ; 
 char* FUNC11 (char const*,char) ; 
 struct i2c_adapter* FUNC12 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC13(struct device *dev, struct device_attribute *attr,
		     const char *buf, size_t count)
{
	struct i2c_adapter *adap = FUNC12(dev);
	struct i2c_board_info info;
	struct i2c_client *client;
	char *blank, end;
	int res;

	FUNC7(&info, 0, sizeof(struct i2c_board_info));

	blank = FUNC11(buf, ' ');
	if (!blank) {
		FUNC2(dev, "%s: Missing parameters\n", "new_device");
		return -EINVAL;
	}
	if (blank - buf > I2C_NAME_SIZE - 1) {
		FUNC2(dev, "%s: Invalid device name\n", "new_device");
		return -EINVAL;
	}
	FUNC6(info.type, buf, blank - buf);

	/* Parse remaining parameters, reject extra parameters */
	res = FUNC10(++blank, "%hi%c", &info.addr, &end);
	if (res < 1) {
		FUNC2(dev, "%s: Can't parse I2C address\n", "new_device");
		return -EINVAL;
	}
	if (res > 1  && end != '\n') {
		FUNC2(dev, "%s: Extra parameters\n", "new_device");
		return -EINVAL;
	}

	if ((info.addr & I2C_ADDR_OFFSET_TEN_BIT) == I2C_ADDR_OFFSET_TEN_BIT) {
		info.addr &= ~I2C_ADDR_OFFSET_TEN_BIT;
		info.flags |= I2C_CLIENT_TEN;
	}

	if (info.addr & I2C_ADDR_OFFSET_SLAVE) {
		info.addr &= ~I2C_ADDR_OFFSET_SLAVE;
		info.flags |= I2C_CLIENT_SLAVE;
	}

	client = FUNC4(adap, &info);
	if (FUNC0(client))
		return FUNC1(client);

	/* Keep track of the added device */
	FUNC8(&adap->userspace_clients_lock);
	FUNC5(&client->detected, &adap->userspace_clients);
	FUNC9(&adap->userspace_clients_lock);
	FUNC3(dev, "%s: Instantiated device %s at 0x%02hx\n", "new_device",
		 info.type, info.addr);

	return count;
}