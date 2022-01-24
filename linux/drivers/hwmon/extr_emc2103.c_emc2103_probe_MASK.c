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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct emc2103_data {int temp_count; int /*<<< orphan*/ ** groups; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  REG_CONF1 ; 
 int /*<<< orphan*/  REG_PRODUCT_ID ; 
 int apd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct device* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct emc2103_data*,int /*<<< orphan*/ **) ; 
 struct emc2103_data* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  emc2103_group ; 
 int /*<<< orphan*/  emc2103_temp3_group ; 
 int /*<<< orphan*/  emc2103_temp4_group ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct emc2103_data*) ; 
 int FUNC9 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct emc2103_data *data;
	struct device *hwmon_dev;
	int status, idx = 0;

	if (!FUNC7(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	data = FUNC6(&client->dev, sizeof(struct emc2103_data),
			    GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC8(client, data);
	data->client = client;
	FUNC11(&data->update_lock);

	/* 2103-2 and 2103-4 have 3 external diodes, 2103-1 has 1 */
	status = FUNC9(client, REG_PRODUCT_ID);
	if (status == 0x24) {
		/* 2103-1 only has 1 external diode */
		data->temp_count = 2;
	} else {
		/* 2103-2 and 2103-4 have 3 or 4 external diodes */
		status = FUNC9(client, REG_CONF1);
		if (status < 0) {
			FUNC2(&client->dev, "reg 0x%02x, err %d\n", REG_CONF1,
				status);
			return status;
		}

		/* detect current state of hardware */
		data->temp_count = (status & 0x01) ? 4 : 3;

		/* force APD state if module parameter is set */
		if (apd == 0) {
			/* force APD mode off */
			data->temp_count = 3;
			status &= ~(0x01);
			FUNC10(client, REG_CONF1, status);
		} else if (apd == 1) {
			/* force APD mode on */
			data->temp_count = 4;
			status |= 0x01;
			FUNC10(client, REG_CONF1, status);
		}
	}

	/* sysfs hooks */
	data->groups[idx++] = &emc2103_group;
	if (data->temp_count >= 3)
		data->groups[idx++] = &emc2103_temp3_group;
	if (data->temp_count == 4)
		data->groups[idx++] = &emc2103_temp4_group;

	hwmon_dev = FUNC5(&client->dev,
							   client->name, data,
							   data->groups);
	if (FUNC0(hwmon_dev))
		return FUNC1(hwmon_dev);

	FUNC3(&client->dev, "%s: sensor '%s'\n",
		 FUNC4(hwmon_dev), client->name);

	return 0;
}