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
struct max44009_data {int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  MAX44009_DRV_NAME ; 
 int /*<<< orphan*/  MAX44009_REG_CFG ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct max44009_data* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  max44009_channels ; 
 int /*<<< orphan*/  max44009_info ; 
 int /*<<< orphan*/  max44009_threaded_irq_handler ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct max44009_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC1(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC6(indio_dev);
	FUNC4(client, indio_dev);
	data->client = client;
	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &max44009_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->name = MAX44009_DRV_NAME;
	indio_dev->channels = max44009_channels;
	indio_dev->num_channels = FUNC0(max44009_channels);
	FUNC7(&data->lock);

	/* Clear any stale interrupt bit */
	ret = FUNC5(client, MAX44009_REG_CFG);
	if (ret < 0)
		return ret;

	if (client->irq > 0) {
		ret = FUNC3(&client->dev, client->irq,
						NULL,
						max44009_threaded_irq_handler,
						IRQF_TRIGGER_FALLING |
						IRQF_ONESHOT | IRQF_SHARED,
						"max44009_event",
						indio_dev);
		if (ret < 0)
			return ret;
	}

	return FUNC2(&client->dev, indio_dev);
}