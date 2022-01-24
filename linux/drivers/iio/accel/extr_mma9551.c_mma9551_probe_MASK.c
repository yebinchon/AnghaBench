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
struct mma9551_data {int /*<<< orphan*/  mutex; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {char const* name; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; } ;
struct i2c_device_id {char* name; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  MMA9551_AUTO_SUSPEND_DELAY_MS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC5 (struct iio_dev*) ; 
 struct mma9551_data* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  mma9551_channels ; 
 int FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  mma9551_info ; 
 int FUNC8 (struct mma9551_data*) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct mma9551_data *data;
	struct iio_dev *indio_dev;
	const char *name = NULL;
	int ret;

	indio_dev = FUNC3(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC6(indio_dev);
	FUNC4(client, indio_dev);
	data->client = client;

	if (id)
		name = id->name;
	else if (FUNC0(&client->dev))
		name = FUNC9(&client->dev);

	ret = FUNC8(data);
	if (ret < 0)
		return ret;

	FUNC11(&data->mutex);

	indio_dev->dev.parent = &client->dev;
	indio_dev->channels = mma9551_channels;
	indio_dev->num_channels = FUNC1(mma9551_channels);
	indio_dev->name = name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &mma9551_info;

	ret = FUNC7(indio_dev);
	if (ret < 0)
		goto out_poweroff;

	ret = FUNC13(&client->dev);
	if (ret < 0)
		goto out_poweroff;

	FUNC12(&client->dev);
	FUNC14(&client->dev,
					 MMA9551_AUTO_SUSPEND_DELAY_MS);
	FUNC15(&client->dev);

	ret = FUNC5(indio_dev);
	if (ret < 0) {
		FUNC2(&client->dev, "unable to register iio device\n");
		goto out_poweroff;
	}

	return 0;

out_poweroff:
	FUNC10(client, false);

	return ret;
}