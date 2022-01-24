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
struct stk8312_data {TYPE_3__* dready_trig; int /*<<< orphan*/  sample_rate_idx; struct i2c_client* client; int /*<<< orphan*/  lock; } ;
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
 int /*<<< orphan*/  STK8312_DRIVER_NAME ; 
 int /*<<< orphan*/  STK8312_IRQ_NAME ; 
 int STK8312_MODE_ACTIVE ; 
 int STK8312_MODE_INT_AH_PP ; 
 int STK8312_MODE_STANDBY ; 
 int /*<<< orphan*/  STK8312_REG_RESET ; 
 int /*<<< orphan*/  STK8312_RNG_6G ; 
 int /*<<< orphan*/  STK8312_SR_400HZ_IDX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct stk8312_data* FUNC8 (struct iio_dev*) ; 
 int FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (struct iio_dev*) ; 
 int FUNC13 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stk8312_buffer_setup_ops ; 
 int /*<<< orphan*/  stk8312_channels ; 
 int /*<<< orphan*/  stk8312_data_rdy_trig_poll ; 
 int /*<<< orphan*/  stk8312_info ; 
 int FUNC15 (struct stk8312_data*,int) ; 
 int FUNC16 (struct stk8312_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stk8312_trigger_handler ; 
 int /*<<< orphan*/  stk8312_trigger_ops ; 

__attribute__((used)) static int FUNC17(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	int ret;
	struct iio_dev *indio_dev;
	struct stk8312_data *data;

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
	indio_dev->info = &stk8312_info;
	indio_dev->name = STK8312_DRIVER_NAME;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = stk8312_channels;
	indio_dev->num_channels = FUNC0(stk8312_channels);

	/* A software reset is recommended at power-on */
	ret = FUNC6(data->client, STK8312_REG_RESET, 0x00);
	if (ret < 0) {
		FUNC1(&client->dev, "failed to reset sensor\n");
		return ret;
	}
	data->sample_rate_idx = STK8312_SR_400HZ_IDX;
	ret = FUNC16(data, STK8312_RNG_6G);
	if (ret < 0)
		return ret;

	ret = FUNC15(data,
			       STK8312_MODE_INT_AH_PP | STK8312_MODE_ACTIVE);
	if (ret < 0)
		return ret;

	if (client->irq > 0) {
		ret = FUNC4(&client->dev, client->irq,
						stk8312_data_rdy_trig_poll,
						NULL,
						IRQF_TRIGGER_RISING |
						IRQF_ONESHOT,
						STK8312_IRQ_NAME,
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
		data->dready_trig->ops = &stk8312_trigger_ops;
		FUNC10(data->dready_trig, indio_dev);
		ret = FUNC9(data->dready_trig);
		if (ret) {
			FUNC1(&client->dev, "iio trigger register failed\n");
			goto err_power_off;
		}
	}

	ret = FUNC13(indio_dev,
					 iio_pollfunc_store_time,
					 stk8312_trigger_handler,
					 &stk8312_buffer_setup_ops);
	if (ret < 0) {
		FUNC1(&client->dev, "iio triggered buffer setup failed\n");
		goto err_trigger_unregister;
	}

	ret = FUNC7(indio_dev);
	if (ret < 0) {
		FUNC1(&client->dev, "device_register failed\n");
		goto err_buffer_cleanup;
	}

	return 0;

err_buffer_cleanup:
	FUNC12(indio_dev);
err_trigger_unregister:
	if (data->dready_trig)
		FUNC11(data->dready_trig);
err_power_off:
	FUNC15(data, STK8312_MODE_STANDBY);
	return ret;
}