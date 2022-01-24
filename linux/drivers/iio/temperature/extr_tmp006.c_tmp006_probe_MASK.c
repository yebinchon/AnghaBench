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
struct tmp006_data {int config; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  TMP006_CONFIG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct iio_dev*) ; 
 struct tmp006_data* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  tmp006_channels ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*) ; 
 int /*<<< orphan*/  tmp006_info ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct tmp006_data *data;
	int ret;

	if (!FUNC4(client->adapter, I2C_FUNC_SMBUS_WORD_DATA))
		return -EOPNOTSUPP;

	if (!FUNC9(client)) {
		FUNC1(&client->dev, "no TMP006 sensor\n");
		return -ENODEV;
	}

	indio_dev = FUNC3(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC8(indio_dev);
	FUNC5(client, indio_dev);
	data->client = client;

	indio_dev->dev.parent = &client->dev;
	indio_dev->name = FUNC2(&client->dev);
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &tmp006_info;

	indio_dev->channels = tmp006_channels;
	indio_dev->num_channels = FUNC0(tmp006_channels);

	ret = FUNC6(data->client, TMP006_CONFIG);
	if (ret < 0)
		return ret;
	data->config = ret;

	return FUNC7(indio_dev);
}