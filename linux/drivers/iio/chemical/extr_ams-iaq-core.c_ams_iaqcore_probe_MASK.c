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
struct ams_iaqcore_data {int /*<<< orphan*/  lock; scalar_t__ last_update; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  ams_iaqcore_channels ; 
 int /*<<< orphan*/  ams_iaqcore_info ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct iio_dev*) ; 
 struct ams_iaqcore_data* FUNC5 (struct iio_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct ams_iaqcore_data *data;

	indio_dev = FUNC2(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC5(indio_dev);
	FUNC4(client, indio_dev);
	data->client = client;

	/* so initial reading will complete */
	data->last_update = jiffies - HZ;
	FUNC6(&data->lock);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &ams_iaqcore_info;
	indio_dev->name = FUNC1(&client->dev);
	indio_dev->modes = INDIO_DIRECT_MODE;

	indio_dev->channels = ams_iaqcore_channels;
	indio_dev->num_channels = FUNC0(ams_iaqcore_channels);

	return FUNC3(&client->dev, indio_dev);
}