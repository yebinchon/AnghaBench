#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {size_t driver_data; int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct bh1750_data {int /*<<< orphan*/  lock; TYPE_2__* chip_info; struct i2c_client* client; } ;
struct TYPE_4__ {int mtreg_to_usec; int mtreg_default; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int I2C_FUNC_I2C ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int FUNC1 (struct bh1750_data*,int) ; 
 int /*<<< orphan*/  bh1750_channels ; 
 TYPE_2__* bh1750_chip_info_tbl ; 
 int /*<<< orphan*/  bh1750_info ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC5 (struct iio_dev*) ; 
 struct bh1750_data* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int ret, usec;
	struct bh1750_data *data;
	struct iio_dev *indio_dev;

	if (!FUNC3(client->adapter, I2C_FUNC_I2C |
				I2C_FUNC_SMBUS_WRITE_BYTE))
		return -EOPNOTSUPP;

	indio_dev = FUNC2(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC6(indio_dev);
	FUNC4(client, indio_dev);
	data->client = client;
	data->chip_info = &bh1750_chip_info_tbl[id->driver_data];

	usec = data->chip_info->mtreg_to_usec * data->chip_info->mtreg_default;
	ret = FUNC1(data, usec);
	if (ret < 0)
		return ret;

	FUNC7(&data->lock);
	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &bh1750_info;
	indio_dev->name = id->name;
	indio_dev->channels = bh1750_channels;
	indio_dev->num_channels = FUNC0(bh1750_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;

	return FUNC5(indio_dev);
}