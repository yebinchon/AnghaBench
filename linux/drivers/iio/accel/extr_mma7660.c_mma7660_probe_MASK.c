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
struct mma7660_data {int /*<<< orphan*/  mode; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  MMA7660_DRIVER_NAME ; 
 int /*<<< orphan*/  MMA7660_MODE_ACTIVE ; 
 int /*<<< orphan*/  MMA7660_MODE_STANDBY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct mma7660_data* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  mma7660_channels ; 
 int /*<<< orphan*/  mma7660_info ; 
 int FUNC6 (struct mma7660_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int ret;
	struct iio_dev *indio_dev;
	struct mma7660_data *data;

	indio_dev = FUNC2(&client->dev, sizeof(*data));
	if (!indio_dev) {
		FUNC1(&client->dev, "iio allocation failed!\n");
		return -ENOMEM;
	}

	data = FUNC5(indio_dev);
	data->client = client;
	FUNC3(client, indio_dev);
	FUNC7(&data->lock);
	data->mode = MMA7660_MODE_STANDBY;

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &mma7660_info;
	indio_dev->name = MMA7660_DRIVER_NAME;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = mma7660_channels;
	indio_dev->num_channels = FUNC0(mma7660_channels);

	ret = FUNC6(data, MMA7660_MODE_ACTIVE);
	if (ret < 0)
		return ret;

	ret = FUNC4(indio_dev);
	if (ret < 0) {
		FUNC1(&client->dev, "device_register failed\n");
		FUNC6(data, MMA7660_MODE_STANDBY);
	}

	return ret;
}