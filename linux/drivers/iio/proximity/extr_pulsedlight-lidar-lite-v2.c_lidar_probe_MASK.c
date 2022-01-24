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
struct lidar_data {int i2c_enabled; struct iio_dev* indio_dev; struct i2c_client* client; int /*<<< orphan*/  xfer; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; TYPE_1__ dev; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int I2C_FUNC_I2C ; 
 int I2C_FUNC_SMBUS_BYTE ; 
 int I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  LIDAR_DRV_NAME ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct lidar_data* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lidar_channels ; 
 int /*<<< orphan*/  lidar_i2c_xfer ; 
 int /*<<< orphan*/  lidar_info ; 
 int /*<<< orphan*/  lidar_smbus_xfer ; 
 int /*<<< orphan*/  lidar_trigger_handler ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
		       const struct i2c_device_id *id)
{
	struct lidar_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC1(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;
	data = FUNC5(indio_dev);

	if (FUNC2(client->adapter, I2C_FUNC_I2C)) {
		data->xfer = lidar_i2c_xfer;
		data->i2c_enabled = 1;
	} else if (FUNC2(client->adapter,
				I2C_FUNC_SMBUS_WORD_DATA | I2C_FUNC_SMBUS_BYTE))
		data->xfer = lidar_smbus_xfer;
	else
		return -EOPNOTSUPP;

	indio_dev->info = &lidar_info;
	indio_dev->name = LIDAR_DRV_NAME;
	indio_dev->channels = lidar_channels;
	indio_dev->num_channels = FUNC0(lidar_channels);
	indio_dev->dev.parent = &client->dev;
	indio_dev->modes = INDIO_DIRECT_MODE;

	FUNC3(client, indio_dev);

	data->client = client;
	data->indio_dev = indio_dev;

	ret = FUNC7(indio_dev, NULL,
					 lidar_trigger_handler, NULL);
	if (ret)
		return ret;

	ret = FUNC4(indio_dev);
	if (ret)
		goto error_unreg_buffer;

	FUNC11(&client->dev, 1000);
	FUNC12(&client->dev);

	ret = FUNC10(&client->dev);
	if (ret)
		goto error_unreg_buffer;
	FUNC8(&client->dev);
	FUNC9(&client->dev);

	return 0;

error_unreg_buffer:
	FUNC6(indio_dev);

	return ret;
}