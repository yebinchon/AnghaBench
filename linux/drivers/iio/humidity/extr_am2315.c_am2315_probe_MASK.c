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
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct am2315_data {int /*<<< orphan*/  lock; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  AM2315_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  am2315_channels ; 
 int /*<<< orphan*/  am2315_info ; 
 int /*<<< orphan*/  am2315_trigger_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct am2315_data* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int ret;
	struct iio_dev *indio_dev;
	struct am2315_data *data;

	indio_dev = FUNC2(&client->dev, sizeof(*data));
	if (!indio_dev) {
		FUNC1(&client->dev, "iio allocation failed!\n");
		return -ENOMEM;
	}

	data = FUNC6(indio_dev);
	data->client = client;
	FUNC5(client, indio_dev);
	FUNC7(&data->lock);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &am2315_info;
	indio_dev->name = AM2315_DRIVER_NAME;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = am2315_channels;
	indio_dev->num_channels = FUNC0(am2315_channels);

	ret = FUNC4(&client->dev,
					indio_dev, iio_pollfunc_store_time,
					 am2315_trigger_handler, NULL);
	if (ret < 0) {
		FUNC1(&client->dev, "iio triggered buffer setup failed\n");
		return ret;
	}

	return FUNC3(&client->dev, indio_dev);
}