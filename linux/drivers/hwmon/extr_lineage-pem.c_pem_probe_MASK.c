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
struct pem_data {int fans_supported; int /*<<< orphan*/ ** groups; scalar_t__* fan_speed; int /*<<< orphan*/  input_length; scalar_t__* input_string; scalar_t__* firmware_rev; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_BLOCK_DATA ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE ; 
 int /*<<< orphan*/  PEM_CLEAR_INFO_FLAGS ; 
 int /*<<< orphan*/  PEM_READ_FAN_SPEED ; 
 int /*<<< orphan*/  PEM_READ_FIRMWARE_REV ; 
 int /*<<< orphan*/  PEM_READ_INPUT_STRING ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 struct device* FUNC2 (struct device*,int /*<<< orphan*/ ,struct pem_data*,int /*<<< orphan*/ **) ; 
 struct pem_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_adapter*,int) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pem_fan_group ; 
 int /*<<< orphan*/  pem_group ; 
 int /*<<< orphan*/  pem_input_group ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
		     const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct pem_data *data;
	int ret, idx = 0;

	if (!FUNC4(adapter, I2C_FUNC_SMBUS_BLOCK_DATA
				     | I2C_FUNC_SMBUS_WRITE_BYTE))
		return -ENODEV;

	data = FUNC3(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC6(&data->update_lock);

	/*
	 * We use the next two commands to determine if the device is really
	 * there.
	 */
	ret = FUNC7(client, PEM_READ_FIRMWARE_REV,
			     data->firmware_rev, sizeof(data->firmware_rev));
	if (ret < 0)
		return ret;

	ret = FUNC5(client, PEM_CLEAR_INFO_FLAGS);
	if (ret < 0)
		return ret;

	FUNC1(dev, "Firmware revision %d.%d.%d\n",
		 data->firmware_rev[0], data->firmware_rev[1],
		 data->firmware_rev[2]);

	/* sysfs hooks */
	data->groups[idx++] = &pem_group;

	/*
	 * Check if input readings are supported.
	 * This is the case if we can read input data,
	 * and if the returned data is not all zeros.
	 * Note that input alarms are always supported.
	 */
	ret = FUNC7(client, PEM_READ_INPUT_STRING,
			     data->input_string,
			     sizeof(data->input_string) - 1);
	if (!ret && (data->input_string[0] || data->input_string[1] ||
		     data->input_string[2]))
		data->input_length = sizeof(data->input_string) - 1;
	else if (ret < 0) {
		/* Input string is one byte longer for some devices */
		ret = FUNC7(client, PEM_READ_INPUT_STRING,
				    data->input_string,
				    sizeof(data->input_string));
		if (!ret && (data->input_string[0] || data->input_string[1] ||
			    data->input_string[2] || data->input_string[3]))
			data->input_length = sizeof(data->input_string);
	}

	if (data->input_length)
		data->groups[idx++] = &pem_input_group;

	/*
	 * Check if fan speed readings are supported.
	 * This is the case if we can read fan speed data,
	 * and if the returned data is not all zeros.
	 * Note that the fan alarm is always supported.
	 */
	ret = FUNC7(client, PEM_READ_FAN_SPEED,
			     data->fan_speed,
			     sizeof(data->fan_speed));
	if (!ret && (data->fan_speed[0] || data->fan_speed[1] ||
		     data->fan_speed[2] || data->fan_speed[3])) {
		data->fans_supported = true;
		data->groups[idx++] = &pem_fan_group;
	}

	hwmon_dev = FUNC2(dev, client->name,
							   data, data->groups);
	return FUNC0(hwmon_dev);
}