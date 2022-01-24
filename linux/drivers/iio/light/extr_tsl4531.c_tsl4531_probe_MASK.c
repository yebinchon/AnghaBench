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
struct tsl4531_data {struct i2c_client* client; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  TSL4531_CONFIG ; 
 int /*<<< orphan*/  TSL4531_CONTROL ; 
 int /*<<< orphan*/  TSL4531_DRV_NAME ; 
 int /*<<< orphan*/  TSL4531_MODE_NORMAL ; 
 int /*<<< orphan*/  TSL4531_TCNTRL_400MS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iio_dev*) ; 
 struct tsl4531_data* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tsl4531_channels ; 
 int FUNC8 (struct i2c_client*) ; 
 int /*<<< orphan*/  tsl4531_info ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct tsl4531_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC2(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC6(indio_dev);
	FUNC3(client, indio_dev);
	data->client = client;
	FUNC7(&data->lock);

	ret = FUNC8(client);
	if (ret) {
		FUNC1(&client->dev, "no TSL4531 sensor\n");
		return ret;
	}

	ret = FUNC4(data->client, TSL4531_CONTROL,
		TSL4531_MODE_NORMAL);
	if (ret < 0)
		return ret;

	ret = FUNC4(data->client, TSL4531_CONFIG,
		TSL4531_TCNTRL_400MS);
	if (ret < 0)
		return ret;

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &tsl4531_info;
	indio_dev->channels = tsl4531_channels;
	indio_dev->num_channels = FUNC0(tsl4531_channels);
	indio_dev->name = TSL4531_DRV_NAME;
	indio_dev->modes = INDIO_DIRECT_MODE;

	return FUNC5(indio_dev);
}