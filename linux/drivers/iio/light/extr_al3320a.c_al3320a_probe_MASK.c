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
struct al3320a_data {struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  AL3320A_DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  al3320a_channels ; 
 int /*<<< orphan*/  al3320a_info ; 
 int FUNC1 (struct al3320a_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 struct al3320a_data* FUNC6 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct al3320a_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC3(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC6(indio_dev);
	FUNC5(client, indio_dev);
	data->client = client;

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &al3320a_info;
	indio_dev->name = AL3320A_DRV_NAME;
	indio_dev->channels = al3320a_channels;
	indio_dev->num_channels = FUNC0(al3320a_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC1(data);
	if (ret < 0) {
		FUNC2(&client->dev, "al3320a chip init failed\n");
		return ret;
	}
	return FUNC4(&client->dev, indio_dev);
}