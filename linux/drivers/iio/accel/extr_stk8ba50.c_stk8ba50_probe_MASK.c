#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stk8ba50_data {TYPE_3__* dready_trig; int /*<<< orphan*/  sample_rate_idx; scalar_t__ range; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ops; TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  STK8BA50_DREADY_INT_MAP ; 
 int /*<<< orphan*/  STK8BA50_DREADY_INT_MASK ; 
 int /*<<< orphan*/  STK8BA50_DRIVER_NAME ; 
 int /*<<< orphan*/  STK8BA50_IRQ_NAME ; 
 int /*<<< orphan*/  STK8BA50_MODE_SUSPEND ; 
 int /*<<< orphan*/  STK8BA50_REG_INTEN2 ; 
 int /*<<< orphan*/  STK8BA50_REG_INTMAP2 ; 
 int /*<<< orphan*/  STK8BA50_REG_SWRST ; 
 int /*<<< orphan*/  STK8BA50_RESET_CMD ; 
 int /*<<< orphan*/  STK8BA50_SR_1792HZ_IDX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct stk8ba50_data* FUNC8 (struct iio_dev*) ; 
 int FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (struct iio_dev*) ; 
 int FUNC13 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stk8ba50_buffer_setup_ops ; 
 int /*<<< orphan*/  stk8ba50_channels ; 
 int /*<<< orphan*/  stk8ba50_data_rdy_trig_poll ; 
 int /*<<< orphan*/  stk8ba50_info ; 
 int /*<<< orphan*/  FUNC15 (struct stk8ba50_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stk8ba50_trigger_handler ; 
 int /*<<< orphan*/  stk8ba50_trigger_ops ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	int ret;
	struct iio_dev *indio_dev;
	struct stk8ba50_data *data;

	indio_dev = FUNC2(&client->dev, sizeof(*data));
	if (!indio_dev) {
		FUNC1(&client->dev, "iio allocation failed!\n");
		return -ENOMEM;
	}

	data = FUNC8(indio_dev);
	data->client = client;
	FUNC5(client, indio_dev);
	FUNC14(&data->lock);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &stk8ba50_info;
	indio_dev->name = STK8BA50_DRIVER_NAME;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = stk8ba50_channels;
	indio_dev->num_channels = FUNC0(stk8ba50_channels);

	/* Reset all registers on startup */
	ret = FUNC6(client,
			STK8BA50_REG_SWRST, STK8BA50_RESET_CMD);
	if (ret < 0) {
		FUNC1(&client->dev, "failed to reset sensor\n");
		goto err_power_off;
	}

	/* The default range is +/-2g */
	data->range = 0;

	/* The default sampling rate is 1792 Hz (maximum) */
	data->sample_rate_idx = STK8BA50_SR_1792HZ_IDX;

	/* Set up interrupts */
	ret = FUNC6(client,
			STK8BA50_REG_INTEN2, STK8BA50_DREADY_INT_MASK);
	if (ret < 0) {
		FUNC1(&client->dev, "failed to set up interrupts\n");
		goto err_power_off;
	}
	ret = FUNC6(client,
			STK8BA50_REG_INTMAP2, STK8BA50_DREADY_INT_MAP);
	if (ret < 0) {
		FUNC1(&client->dev, "failed to set up interrupts\n");
		goto err_power_off;
	}

	if (client->irq > 0) {
		ret = FUNC4(&client->dev, client->irq,
						stk8ba50_data_rdy_trig_poll,
						NULL,
						IRQF_TRIGGER_RISING |
						IRQF_ONESHOT,
						STK8BA50_IRQ_NAME,
						indio_dev);
		if (ret < 0) {
			FUNC1(&client->dev, "request irq %d failed\n",
				client->irq);
			goto err_power_off;
		}

		data->dready_trig = FUNC3(&client->dev,
							   "%s-dev%d",
							   indio_dev->name,
							   indio_dev->id);
		if (!data->dready_trig) {
			ret = -ENOMEM;
			goto err_power_off;
		}

		data->dready_trig->dev.parent = &client->dev;
		data->dready_trig->ops = &stk8ba50_trigger_ops;
		FUNC10(data->dready_trig, indio_dev);
		ret = FUNC9(data->dready_trig);
		if (ret) {
			FUNC1(&client->dev, "iio trigger register failed\n");
			goto err_power_off;
		}
	}

	ret = FUNC13(indio_dev,
					 iio_pollfunc_store_time,
					 stk8ba50_trigger_handler,
					 &stk8ba50_buffer_setup_ops);
	if (ret < 0) {
		FUNC1(&client->dev, "iio triggered buffer setup failed\n");
		goto err_trigger_unregister;
	}

	ret = FUNC7(indio_dev);
	if (ret < 0) {
		FUNC1(&client->dev, "device_register failed\n");
		goto err_buffer_cleanup;
	}

	return ret;

err_buffer_cleanup:
	FUNC12(indio_dev);
err_trigger_unregister:
	if (data->dready_trig)
		FUNC11(data->dready_trig);
err_power_off:
	FUNC15(data, STK8BA50_MODE_SUSPEND);
	return ret;
}