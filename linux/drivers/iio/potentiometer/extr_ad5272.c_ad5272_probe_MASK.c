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
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int num_channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * channels; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {size_t driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;
struct ad5272_data {int /*<<< orphan*/ * cfg; int /*<<< orphan*/  lock; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5272_CTL ; 
 int /*<<< orphan*/  AD5272_RDAC_WR_EN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * ad5272_cfg ; 
 int /*<<< orphan*/  ad5272_channel ; 
 int /*<<< orphan*/  ad5272_info ; 
 int FUNC0 (struct ad5272_data*) ; 
 int FUNC1 (struct ad5272_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC2 (struct device*,int) ; 
 int FUNC3 (struct device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct iio_dev*) ; 
 struct ad5272_data* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct iio_dev *indio_dev;
	struct ad5272_data *data;
	int ret;

	indio_dev = FUNC2(dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	FUNC4(client, indio_dev);

	data = FUNC5(indio_dev);
	data->client = client;
	FUNC6(&data->lock);
	data->cfg = &ad5272_cfg[id->driver_data];

	ret = FUNC0(data);
	if (ret)
		return ret;

	ret = FUNC1(data, AD5272_CTL, AD5272_RDAC_WR_EN);
	if (ret < 0)
		return -ENODEV;

	indio_dev->dev.parent = dev;
	indio_dev->info = &ad5272_info;
	indio_dev->channels = &ad5272_channel;
	indio_dev->num_channels = 1;
	indio_dev->name = client->name;

	return FUNC3(dev, indio_dev);
}