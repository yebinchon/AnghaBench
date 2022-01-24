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
struct ltc2485_data {int /*<<< orphan*/  time_prev; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int I2C_FUNC_I2C ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  LTC2485_CONFIG_DEFAULT ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct ltc2485_data* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  ltc2485_channel ; 
 int /*<<< orphan*/  ltc2485_info ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct ltc2485_data *data;
	int ret;

	if (!FUNC3(client->adapter, I2C_FUNC_I2C |
				     I2C_FUNC_SMBUS_WRITE_BYTE))
		return -EOPNOTSUPP;

	indio_dev = FUNC1(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC6(indio_dev);
	FUNC4(client, indio_dev);
	data->client = client;

	indio_dev->dev.parent = &client->dev;
	indio_dev->name = id->name;
	indio_dev->info = &ltc2485_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = ltc2485_channel;
	indio_dev->num_channels = FUNC0(ltc2485_channel);

	ret = FUNC5(data->client, LTC2485_CONFIG_DEFAULT);
	if (ret < 0)
		return ret;

	data->time_prev = FUNC7();

	return FUNC2(&client->dev, indio_dev);
}