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
struct vl53l0x_data {struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {char* name; int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct iio_dev*) ; 
 struct vl53l0x_data* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  vl53l0x_channels ; 
 int /*<<< orphan*/  vl53l0x_info ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct vl53l0x_data *data;
	struct iio_dev *indio_dev;

	indio_dev = FUNC1(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC5(indio_dev);
	data->client = client;
	FUNC4(client, indio_dev);

	if (!FUNC3(client->adapter,
				     I2C_FUNC_SMBUS_READ_I2C_BLOCK |
				     I2C_FUNC_SMBUS_BYTE_DATA))
		return -EOPNOTSUPP;

	indio_dev->dev.parent = &client->dev;
	indio_dev->name = "vl53l0x";
	indio_dev->info = &vl53l0x_info;
	indio_dev->channels = vl53l0x_channels;
	indio_dev->num_channels = FUNC0(vl53l0x_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;

	return FUNC2(&client->dev, indio_dev);
}