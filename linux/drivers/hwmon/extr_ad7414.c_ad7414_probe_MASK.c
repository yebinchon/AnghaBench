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
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; int /*<<< orphan*/  adapter; } ;
struct ad7414_data {int /*<<< orphan*/  lock; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD7414_REG_CONF ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_READ_WORD_DATA ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  ad7414_groups ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct device* FUNC3 (struct device*,int /*<<< orphan*/ ,struct ad7414_data*,int /*<<< orphan*/ ) ; 
 struct ad7414_data* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			const struct i2c_device_id *dev_id)
{
	struct device *dev = &client->dev;
	struct ad7414_data *data;
	struct device *hwmon_dev;
	int conf;

	if (!FUNC5(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA |
				     I2C_FUNC_SMBUS_READ_WORD_DATA))
		return -EOPNOTSUPP;

	data = FUNC4(dev, sizeof(struct ad7414_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC8(&data->lock);

	FUNC1(&client->dev, "chip found\n");

	/* Make sure the chip is powered up. */
	conf = FUNC6(client, AD7414_REG_CONF);
	if (conf < 0)
		FUNC2(dev, "ad7414_probe unable to read config register.\n");
	else {
		conf &= ~(1 << 7);
		FUNC7(client, AD7414_REG_CONF, conf);
	}

	hwmon_dev = FUNC3(dev,
							   client->name,
							   data, ad7414_groups);
	return FUNC0(hwmon_dev);
}