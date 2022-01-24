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
struct isl29501_private {int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; int /*<<< orphan*/  modes; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct isl29501_private* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  isl29501_channels ; 
 int /*<<< orphan*/  isl29501_info ; 
 int FUNC7 (struct isl29501_private*) ; 
 int /*<<< orphan*/  isl29501_trigger_handler ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct isl29501_private *isl29501;
	int ret;

	indio_dev = FUNC2(&client->dev, sizeof(*isl29501));
	if (!indio_dev)
		return -ENOMEM;

	isl29501 = FUNC6(indio_dev);

	FUNC5(client, indio_dev);
	isl29501->client = client;

	FUNC8(&isl29501->lock);

	ret = FUNC7(isl29501);
	if (ret < 0)
		return ret;

	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->dev.parent = &client->dev;
	indio_dev->channels = isl29501_channels;
	indio_dev->num_channels = FUNC0(isl29501_channels);
	indio_dev->name = client->name;
	indio_dev->info = &isl29501_info;

	ret = FUNC4(&client->dev, indio_dev,
					      iio_pollfunc_store_time,
					      isl29501_trigger_handler,
					      NULL);
	if (ret < 0) {
		FUNC1(&client->dev, "unable to setup iio triggered buffer\n");
		return ret;
	}

	return FUNC3(&client->dev, indio_dev);
}