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
struct stk3310_data {int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  STK3310_DRIVER_NAME ; 
 int /*<<< orphan*/  STK3310_EVENT ; 
 int /*<<< orphan*/  STK3310_STATE_STANDBY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC5 (struct iio_dev*) ; 
 struct stk3310_data* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stk3310_channels ; 
 int /*<<< orphan*/  stk3310_info ; 
 int FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  stk3310_irq_event_handler ; 
 int /*<<< orphan*/  stk3310_irq_handler ; 
 int FUNC9 (struct stk3310_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct stk3310_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	int ret;
	struct iio_dev *indio_dev;
	struct stk3310_data *data;

	indio_dev = FUNC2(&client->dev, sizeof(*data));
	if (!indio_dev) {
		FUNC1(&client->dev, "iio allocation failed!\n");
		return -ENOMEM;
	}

	data = FUNC6(indio_dev);
	data->client = client;
	FUNC4(client, indio_dev);
	FUNC7(&data->lock);

	ret = FUNC9(data);
	if (ret < 0)
		return ret;

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &stk3310_info;
	indio_dev->name = STK3310_DRIVER_NAME;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = stk3310_channels;
	indio_dev->num_channels = FUNC0(stk3310_channels);

	ret = FUNC8(indio_dev);
	if (ret < 0)
		return ret;

	if (client->irq > 0) {
		ret = FUNC3(&client->dev, client->irq,
						stk3310_irq_handler,
						stk3310_irq_event_handler,
						IRQF_TRIGGER_FALLING |
						IRQF_ONESHOT,
						STK3310_EVENT, indio_dev);
		if (ret < 0) {
			FUNC1(&client->dev, "request irq %d failed\n",
				client->irq);
			goto err_standby;
		}
	}

	ret = FUNC5(indio_dev);
	if (ret < 0) {
		FUNC1(&client->dev, "device_register failed\n");
		goto err_standby;
	}

	return 0;

err_standby:
	FUNC10(data, STK3310_STATE_STANDBY);
	return ret;
}