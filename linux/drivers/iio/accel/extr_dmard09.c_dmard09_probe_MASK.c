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
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dmard09_data {struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DMARD09_CHIPID ; 
 int /*<<< orphan*/  DMARD09_DRV_NAME ; 
 int /*<<< orphan*/  DMARD09_REG_CHIPID ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  dmard09_channels ; 
 int /*<<< orphan*/  dmard09_info ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct dmard09_data* FUNC6 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int ret;
	struct iio_dev *indio_dev;
	struct dmard09_data *data;

	indio_dev = FUNC2(&client->dev, sizeof(*data));
	if (!indio_dev) {
		FUNC1(&client->dev, "iio allocation failed\n");
		return -ENOMEM;
	}

	data = FUNC6(indio_dev);
	data->client = client;

	ret = FUNC5(data->client, DMARD09_REG_CHIPID);
	if (ret < 0) {
		FUNC1(&client->dev, "Error reading chip id %d\n", ret);
		return ret;
	}

	if (ret != DMARD09_CHIPID) {
		FUNC1(&client->dev, "Invalid chip id %d\n", ret);
		return -ENODEV;
	}

	FUNC4(client, indio_dev);
	indio_dev->dev.parent = &client->dev;
	indio_dev->name = DMARD09_DRV_NAME;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = dmard09_channels;
	indio_dev->num_channels = FUNC0(dmard09_channels);
	indio_dev->info = &dmard09_info;

	return FUNC3(&client->dev, indio_dev);
}