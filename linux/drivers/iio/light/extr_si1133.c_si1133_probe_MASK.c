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
struct si1133_data {int /*<<< orphan*/  mutex; struct i2c_client* client; int /*<<< orphan*/  regmap; int /*<<< orphan*/  completion; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 struct iio_dev* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct iio_dev*) ; 
 struct si1133_data* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  si1133_channels ; 
 int /*<<< orphan*/  si1133_info ; 
 int FUNC13 (struct si1133_data*) ; 
 int /*<<< orphan*/  si1133_regmap_config ; 
 int /*<<< orphan*/  si1133_threaded_irq_handler ; 
 int FUNC14 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct si1133_data *data;
	struct iio_dev *iio_dev;
	int err;

	iio_dev = FUNC5(&client->dev, sizeof(*data));
	if (!iio_dev)
		return -ENOMEM;

	data = FUNC10(iio_dev);

	FUNC11(&data->completion);

	data->regmap = FUNC7(client, &si1133_regmap_config);
	if (FUNC1(data->regmap)) {
		err = FUNC2(data->regmap);
		FUNC3(&client->dev, "Failed to initialise regmap: %d\n", err);
		return err;
	}

	FUNC9(client, iio_dev);
	data->client = client;

	iio_dev->dev.parent = &client->dev;
	iio_dev->name = id->name;
	iio_dev->channels = si1133_channels;
	iio_dev->num_channels = FUNC0(si1133_channels);
	iio_dev->info = &si1133_info;
	iio_dev->modes = INDIO_DIRECT_MODE;

	FUNC12(&data->mutex);

	err = FUNC14(iio_dev);
	if (err)
		return err;

	err = FUNC13(data);
	if (err) {
		FUNC3(&client->dev,
			"Error when initializing chip: %d\n", err);
		return err;
	}

	if (!client->irq) {
		FUNC3(&client->dev,
			"Required interrupt not provided, cannot proceed\n");
		return -EINVAL;
	}

	err = FUNC8(&client->dev, client->irq,
					NULL,
					si1133_threaded_irq_handler,
					IRQF_ONESHOT | IRQF_SHARED,
					client->name, iio_dev);
	if (err) {
		FUNC4(&client->dev, "Request irq %d failed: %i\n",
			 client->irq, err);
		return err;
	}

	return FUNC6(&client->dev, iio_dev);
}