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
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct cm3323_data {int /*<<< orphan*/  mutex; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CM3323_DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  cm3323_channels ; 
 int /*<<< orphan*/  cm3323_disable ; 
 int /*<<< orphan*/  cm3323_info ; 
 int FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct iio_dev*) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct iio_dev*) ; 
 struct cm3323_data* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct cm3323_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC4(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC7(indio_dev);
	FUNC6(client, indio_dev);
	data->client = client;

	FUNC8(&data->mutex);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &cm3323_info;
	indio_dev->name = CM3323_DRV_NAME;
	indio_dev->channels = cm3323_channels;
	indio_dev->num_channels = FUNC0(cm3323_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC1(indio_dev);
	if (ret < 0) {
		FUNC2(&client->dev, "cm3323 chip init failed\n");
		return ret;
	}

	ret = FUNC3(&client->dev, cm3323_disable, indio_dev);
	if (ret < 0)
		return ret;

	return FUNC5(&client->dev, indio_dev);
}