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
struct mpl3115_data {int /*<<< orphan*/  ctrl_reg1; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; TYPE_1__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  MPL3115_CTRL_OS_258MS ; 
 int /*<<< orphan*/  MPL3115_CTRL_REG1 ; 
 int /*<<< orphan*/  MPL3115_CTRL_RESET ; 
 int MPL3115_DEVICE_ID ; 
 int /*<<< orphan*/  MPL3115_WHO_AM_I ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iio_dev*) ; 
 struct mpl3115_data* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*) ; 
 int FUNC8 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mpl3115_channels ; 
 int /*<<< orphan*/  mpl3115_info ; 
 int /*<<< orphan*/  mpl3115_trigger_handler ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct mpl3115_data *data;
	struct iio_dev *indio_dev;
	int ret;

	ret = FUNC3(client, MPL3115_WHO_AM_I);
	if (ret < 0)
		return ret;
	if (ret != MPL3115_DEVICE_ID)
		return -ENODEV;

	indio_dev = FUNC1(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC6(indio_dev);
	data->client = client;
	FUNC10(&data->lock);

	FUNC2(client, indio_dev);
	indio_dev->info = &mpl3115_info;
	indio_dev->name = id->name;
	indio_dev->dev.parent = &client->dev;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = mpl3115_channels;
	indio_dev->num_channels = FUNC0(mpl3115_channels);

	/* software reset, I2C transfer is aborted (fails) */
	FUNC4(client, MPL3115_CTRL_REG1,
		MPL3115_CTRL_RESET);
	FUNC9(50);

	data->ctrl_reg1 = MPL3115_CTRL_OS_258MS;
	ret = FUNC4(client, MPL3115_CTRL_REG1,
		data->ctrl_reg1);
	if (ret < 0)
		return ret;

	ret = FUNC8(indio_dev, NULL,
		mpl3115_trigger_handler, NULL);
	if (ret < 0)
		return ret;

	ret = FUNC5(indio_dev);
	if (ret < 0)
		goto buffer_cleanup;
	return 0;

buffer_cleanup:
	FUNC7(indio_dev);
	return ret;
}