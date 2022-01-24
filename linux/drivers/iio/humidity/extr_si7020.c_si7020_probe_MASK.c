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
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int I2C_FUNC_SMBUS_READ_WORD_DATA ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  SI7020CMD_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct i2c_client** FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  si7020_channels ; 
 int /*<<< orphan*/  si7020_info ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct i2c_client **data;
	int ret;

	if (!FUNC4(client->adapter,
				     I2C_FUNC_SMBUS_WRITE_BYTE |
				     I2C_FUNC_SMBUS_READ_WORD_DATA))
		return -EOPNOTSUPP;

	/* Reset device, loads default settings. */
	ret = FUNC5(client, SI7020CMD_RESET);
	if (ret < 0)
		return ret;
	/* Wait the maximum power-up time after software reset. */
	FUNC7(15);

	indio_dev = FUNC2(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC6(indio_dev);
	*data = client;

	indio_dev->dev.parent = &client->dev;
	indio_dev->name = FUNC1(&client->dev);
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &si7020_info;
	indio_dev->channels = si7020_channels;
	indio_dev->num_channels = FUNC0(si7020_channels);

	return FUNC3(&client->dev, indio_dev);
}