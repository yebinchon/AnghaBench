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
struct sht3x_platform_data {int blocking_io; int high_precision; } ;
struct sht3x_data {int /*<<< orphan*/  data_lock; int /*<<< orphan*/  i2c_lock; struct sht3x_platform_data setup; struct i2c_client* client; scalar_t__ last_update; scalar_t__ mode; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {scalar_t__ platform_data; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct attribute_group {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int SHT3X_CMD_LENGTH ; 
 int /*<<< orphan*/  SHT3X_CRC8_POLYNOMIAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct device* FUNC4 (struct device*,int /*<<< orphan*/ ,struct sht3x_data*,struct attribute_group const**) ; 
 struct sht3x_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int FUNC8 (struct sht3x_data*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sht3x_cmd_clear_status_reg ; 
 int /*<<< orphan*/  sht3x_crc8_table ; 
 struct attribute_group** sht3x_groups ; 
 int /*<<< orphan*/  FUNC11 (struct sht3x_data*) ; 
 scalar_t__ sts3x ; 
 struct attribute_group** sts3x_groups ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
		       const struct i2c_device_id *id)
{
	int ret;
	struct sht3x_data *data;
	struct device *hwmon_dev;
	struct i2c_adapter *adap = client->adapter;
	struct device *dev = &client->dev;
	const struct attribute_group **attribute_groups;

	/*
	 * we require full i2c support since the sht3x uses multi-byte read and
	 * writes as well as multi-byte commands which are not supported by
	 * the smbus protocol
	 */
	if (!FUNC6(adap, I2C_FUNC_I2C))
		return -ENODEV;

	ret = FUNC7(client, sht3x_cmd_clear_status_reg,
			      SHT3X_CMD_LENGTH);
	if (ret != SHT3X_CMD_LENGTH)
		return ret < 0 ? ret : -ENODEV;

	data = FUNC5(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->setup.blocking_io = false;
	data->setup.high_precision = true;
	data->mode = 0;
	data->last_update = jiffies - FUNC9(3000);
	data->client = client;
	FUNC2(sht3x_crc8_table, SHT3X_CRC8_POLYNOMIAL);

	if (client->dev.platform_data)
		data->setup = *(struct sht3x_platform_data *)dev->platform_data;

	FUNC11(data);

	FUNC10(&data->i2c_lock);
	FUNC10(&data->data_lock);

	/*
	 * An attempt to read limits register too early
	 * causes a NACK response from the chip.
	 * Waiting for an empirical delay of 500 us solves the issue.
	 */
	FUNC12(500, 600);

	ret = FUNC8(data);
	if (ret)
		return ret;

	if (id->driver_data == sts3x)
		attribute_groups = sts3x_groups;
	else
		attribute_groups = sht3x_groups;

	hwmon_dev = FUNC4(dev,
							   client->name,
							   data,
							   attribute_groups);

	if (FUNC0(hwmon_dev))
		FUNC3(dev, "unable to register hwmon device\n");

	return FUNC1(hwmon_dev);
}