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
struct rfd77402_data {int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  RFD77402_DRV_NAME ; 
 int /*<<< orphan*/  RFD77402_MOD_CHIP_ID ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct rfd77402_data* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rfd77402_channels ; 
 int /*<<< orphan*/  rfd77402_info ; 
 int FUNC7 (struct rfd77402_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct rfd77402_data*) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct rfd77402_data *data;
	struct iio_dev *indio_dev;
	int ret;

	ret = FUNC3(client, RFD77402_MOD_CHIP_ID);
	if (ret < 0)
		return ret;
	if (ret != 0xad01 && ret != 0xad02) /* known chip ids */
		return -ENODEV;

	indio_dev = FUNC1(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC5(indio_dev);
	FUNC2(client, indio_dev);
	data->client = client;
	FUNC6(&data->lock);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &rfd77402_info;
	indio_dev->channels = rfd77402_channels;
	indio_dev->num_channels = FUNC0(rfd77402_channels);
	indio_dev->name = RFD77402_DRV_NAME;
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC7(data);
	if (ret < 0)
		return ret;

	ret = FUNC4(indio_dev);
	if (ret)
		goto err_powerdown;

	return 0;

err_powerdown:
	FUNC8(data);
	return ret;
}