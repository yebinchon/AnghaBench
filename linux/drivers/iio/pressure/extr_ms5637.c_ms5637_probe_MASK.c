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
struct ms_tp_dev {int res_index; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; TYPE_1__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ; 
 int I2C_FUNC_SMBUS_READ_WORD_DATA ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 struct ms_tp_dev* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  ms5637_channels ; 
 int /*<<< orphan*/  ms5637_info ; 
 int FUNC7 (struct i2c_client*,int,int) ; 
 int FUNC8 (struct ms_tp_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct ms_tp_dev *dev_data;
	struct iio_dev *indio_dev;
	int ret;

	if (!FUNC4(client->adapter,
				     I2C_FUNC_SMBUS_READ_WORD_DATA |
				     I2C_FUNC_SMBUS_WRITE_BYTE |
				     I2C_FUNC_SMBUS_READ_I2C_BLOCK)) {
		FUNC1(&client->dev,
			"Adapter does not support some i2c transaction\n");
		return -EOPNOTSUPP;
	}

	indio_dev = FUNC2(&client->dev, sizeof(*dev_data));
	if (!indio_dev)
		return -ENOMEM;

	dev_data = FUNC6(indio_dev);
	dev_data->client = client;
	dev_data->res_index = 5;
	FUNC9(&dev_data->lock);

	indio_dev->info = &ms5637_info;
	indio_dev->name = id->name;
	indio_dev->dev.parent = &client->dev;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = ms5637_channels;
	indio_dev->num_channels = FUNC0(ms5637_channels);

	FUNC5(client, indio_dev);

	ret = FUNC7(client, 0x1E, 3000);
	if (ret)
		return ret;

	ret = FUNC8(dev_data);
	if (ret)
		return ret;

	return FUNC3(&client->dev, indio_dev);
}