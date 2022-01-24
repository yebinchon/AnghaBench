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
struct ltc2471_data {struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {scalar_t__ driver_data; int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ltc2471_data* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  ltc2471_channel ; 
 int FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  ltc2471_info ; 
 scalar_t__ ltc2473 ; 
 int /*<<< orphan*/  ltc2473_channel ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct ltc2471_data *data;
	int ret;

	if (!FUNC3(client->adapter, I2C_FUNC_I2C))
		return -EOPNOTSUPP;

	indio_dev = FUNC1(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC4(indio_dev);
	data->client = client;

	indio_dev->dev.parent = &client->dev;
	indio_dev->name = id->name;
	indio_dev->info = &ltc2471_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	if (id->driver_data == ltc2473)
		indio_dev->channels = ltc2473_channel;
	else
		indio_dev->channels = ltc2471_channel;
	indio_dev->num_channels = 1;

	/* Trigger once to start conversion and check if chip is there */
	ret = FUNC5(client);
	if (ret < 0) {
		FUNC0(&client->dev, "Cannot read from device.\n");
		return ret;
	}

	return FUNC2(&client->dev, indio_dev);
}