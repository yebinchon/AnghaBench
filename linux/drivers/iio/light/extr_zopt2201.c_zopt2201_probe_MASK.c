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
struct zopt2201_data {int /*<<< orphan*/  rate; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_I2C_BLOCK ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  ZOPT2201_DRV_NAME ; 
 int /*<<< orphan*/  ZOPT2201_LS_GAIN_3 ; 
 int /*<<< orphan*/  ZOPT2201_MEAS_FREQ_100MS ; 
 int /*<<< orphan*/  ZOPT2201_MEAS_RES_18BIT ; 
 int /*<<< orphan*/  ZOPT2201_PART_ID ; 
 int ZOPT2201_PART_NUMBER ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct zopt2201_data* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zopt2201_channels ; 
 int /*<<< orphan*/  zopt2201_info ; 
 int FUNC8 (struct zopt2201_data*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct zopt2201_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct zopt2201_data *data;
	struct iio_dev *indio_dev;
	int ret;

	if (!FUNC3(client->adapter,
				     I2C_FUNC_SMBUS_READ_I2C_BLOCK))
		return -EOPNOTSUPP;

	ret = FUNC5(client, ZOPT2201_PART_ID);
	if (ret < 0)
		return ret;
	if (ret != ZOPT2201_PART_NUMBER)
		return -ENODEV;

	indio_dev = FUNC1(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC6(indio_dev);
	FUNC4(client, indio_dev);
	data->client = client;
	FUNC7(&data->lock);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &zopt2201_info;
	indio_dev->channels = zopt2201_channels;
	indio_dev->num_channels = FUNC0(zopt2201_channels);
	indio_dev->name = ZOPT2201_DRV_NAME;
	indio_dev->modes = INDIO_DIRECT_MODE;

	data->rate = ZOPT2201_MEAS_FREQ_100MS;
	ret = FUNC9(data, ZOPT2201_MEAS_RES_18BIT);
	if (ret < 0)
		return ret;

	ret = FUNC8(data, ZOPT2201_LS_GAIN_3);
	if (ret < 0)
		return ret;

	return FUNC2(&client->dev, indio_dev);
}