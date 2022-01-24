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
typedef  int u16 ;
struct shtc1_platform_data {int blocking_io; int high_precision; } ;
struct shtc1_data {int chip; int /*<<< orphan*/  update_lock; struct shtc1_platform_data setup; struct i2c_client* client; } ;
struct i2c_device_id {int driver_data; } ;
struct device {scalar_t__ platform_data; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
typedef  int /*<<< orphan*/  id_reg_buf ;
typedef  enum shtcx_chips { ____Placeholder_shtcx_chips } shtcx_chips ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int SHTC1_CMD_LENGTH ; 
 int SHTC1_ID ; 
 int SHTC1_ID_MASK ; 
 int SHTC3_ID ; 
 int SHTC3_ID_MASK ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 struct device* FUNC5 (struct device*,int /*<<< orphan*/ ,struct shtc1_data*,int /*<<< orphan*/ ) ; 
 struct shtc1_data* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct i2c_client*,char*,int) ; 
 int FUNC9 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shtc1_cmd_read_id_reg ; 
 int /*<<< orphan*/  shtc1_groups ; 
 int /*<<< orphan*/  FUNC11 (struct shtc1_data*) ; 
 int shtc3 ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
		       const struct i2c_device_id *id)
{
	int ret;
	u16 id_reg;
	char id_reg_buf[2];
	struct shtc1_data *data;
	struct device *hwmon_dev;
	enum shtcx_chips chip = id->driver_data;
	struct i2c_adapter *adap = client->adapter;
	struct device *dev = &client->dev;

	if (!FUNC7(adap, I2C_FUNC_I2C)) {
		FUNC4(dev, "plain i2c transactions not supported\n");
		return -ENODEV;
	}

	ret = FUNC9(client, shtc1_cmd_read_id_reg, SHTC1_CMD_LENGTH);
	if (ret != SHTC1_CMD_LENGTH) {
		FUNC4(dev, "could not send read_id_reg command: %d\n", ret);
		return ret < 0 ? ret : -ENODEV;
	}
	ret = FUNC8(client, id_reg_buf, sizeof(id_reg_buf));
	if (ret != sizeof(id_reg_buf)) {
		FUNC4(dev, "could not read ID register: %d\n", ret);
		return -ENODEV;
	}

	id_reg = FUNC2((__be16 *)id_reg_buf);
	if (chip == shtc3) {
		if ((id_reg & SHTC3_ID_MASK) != SHTC3_ID) {
			FUNC4(dev, "SHTC3 ID register does not match\n");
			return -ENODEV;
		}
	} else if ((id_reg & SHTC1_ID_MASK) != SHTC1_ID) {
		FUNC4(dev, "SHTC1 ID register does not match\n");
		return -ENODEV;
	}

	data = FUNC6(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->setup.blocking_io = false;
	data->setup.high_precision = true;
	data->client = client;
	data->chip = chip;

	if (client->dev.platform_data)
		data->setup = *(struct shtc1_platform_data *)dev->platform_data;
	FUNC11(data);
	FUNC10(&data->update_lock);

	hwmon_dev = FUNC5(dev,
							   client->name,
							   data,
							   shtc1_groups);
	if (FUNC0(hwmon_dev))
		FUNC3(dev, "unable to register hwmon device\n");

	return FUNC1(hwmon_dev);
}