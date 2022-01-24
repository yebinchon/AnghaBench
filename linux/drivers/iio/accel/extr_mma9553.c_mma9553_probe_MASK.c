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
struct mma9553_data {int /*<<< orphan*/  mutex; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {char const* name; TYPE_1__ dev; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;
struct i2c_device_id {char* name; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  MMA9551_AUTO_SUSPEND_DELAY_MS ; 
 int /*<<< orphan*/  MMA9553_IRQ_NAME ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*) ; 
 struct mma9553_data* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  mma9553_channels ; 
 int /*<<< orphan*/  mma9553_event_handler ; 
 int /*<<< orphan*/  mma9553_info ; 
 int FUNC10 (struct mma9553_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct mma9553_data*) ; 
 int /*<<< orphan*/  mma9553_irq_handler ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct mma9553_data *data;
	struct iio_dev *indio_dev;
	const char *name = NULL;
	int ret;

	indio_dev = FUNC4(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC8(indio_dev);
	FUNC6(client, indio_dev);
	data->client = client;

	if (id)
		name = id->name;
	else if (FUNC0(&client->dev))
		name = FUNC12(&client->dev);
	else
		return -ENOSYS;

	FUNC13(&data->mutex);
	FUNC11(data);

	ret = FUNC10(data);
	if (ret < 0)
		return ret;

	indio_dev->dev.parent = &client->dev;
	indio_dev->channels = mma9553_channels;
	indio_dev->num_channels = FUNC1(mma9553_channels);
	indio_dev->name = name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &mma9553_info;

	if (client->irq > 0) {
		ret = FUNC5(&client->dev, client->irq,
						mma9553_irq_handler,
						mma9553_event_handler,
						IRQF_TRIGGER_RISING,
						MMA9553_IRQ_NAME, indio_dev);
		if (ret < 0) {
			FUNC3(&client->dev, "request irq %d failed\n",
				client->irq);
			goto out_poweroff;
		}
	}

	ret = FUNC15(&client->dev);
	if (ret < 0)
		goto out_poweroff;

	FUNC14(&client->dev);
	FUNC16(&client->dev,
					 MMA9551_AUTO_SUSPEND_DELAY_MS);
	FUNC17(&client->dev);

	ret = FUNC7(indio_dev);
	if (ret < 0) {
		FUNC3(&client->dev, "unable to register iio device\n");
		goto out_poweroff;
	}

	FUNC2(&indio_dev->dev, "Registered device %s\n", name);
	return 0;

out_poweroff:
	FUNC9(client, false);
	return ret;
}