#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rpr0521_data {TYPE_3__* drdy_trigger0; int /*<<< orphan*/  lock; struct regmap* regmap; struct i2c_client* client; } ;
struct regmap {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {TYPE_2__ dev; int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  id; int /*<<< orphan*/  name; int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; scalar_t__ irq; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_8__ {int /*<<< orphan*/ * ops; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  RPR0521_DRV_NAME ; 
 int /*<<< orphan*/  RPR0521_IRQ_NAME ; 
 int /*<<< orphan*/  RPR0521_SLEEP_DELAY_MS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct regmap* FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC11 (struct iio_dev*) ; 
 struct rpr0521_data* FUNC12 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpr0521_available_scan_masks ; 
 int /*<<< orphan*/  rpr0521_buffer_setup_ops ; 
 int /*<<< orphan*/  rpr0521_channels ; 
 int /*<<< orphan*/  rpr0521_drdy_irq_handler ; 
 int /*<<< orphan*/  rpr0521_drdy_irq_thread ; 
 int /*<<< orphan*/  rpr0521_info ; 
 int FUNC22 (struct rpr0521_data*) ; 
 int /*<<< orphan*/  FUNC23 (struct rpr0521_data*) ; 
 int /*<<< orphan*/  rpr0521_regmap_config ; 
 int /*<<< orphan*/  rpr0521_trigger_consumer_handler ; 
 int /*<<< orphan*/  rpr0521_trigger_consumer_store_time ; 
 int /*<<< orphan*/  rpr0521_trigger_ops ; 

__attribute__((used)) static int FUNC24(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct rpr0521_data *data;
	struct iio_dev *indio_dev;
	struct regmap *regmap;
	int ret;

	indio_dev = FUNC4(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	regmap = FUNC8(client, &rpr0521_regmap_config);
	if (FUNC1(regmap)) {
		FUNC3(&client->dev, "regmap_init failed!\n");
		return FUNC2(regmap);
	}

	data = FUNC12(indio_dev);
	FUNC10(client, indio_dev);
	data->client = client;
	data->regmap = regmap;

	FUNC14(&data->lock);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &rpr0521_info;
	indio_dev->name = RPR0521_DRV_NAME;
	indio_dev->channels = rpr0521_channels;
	indio_dev->num_channels = FUNC0(rpr0521_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC22(data);
	if (ret < 0) {
		FUNC3(&client->dev, "rpr0521 chip init failed\n");
		return ret;
	}

	ret = FUNC18(&client->dev);
	if (ret < 0)
		goto err_poweroff;

	FUNC16(&client->dev);
	FUNC19(&client->dev, RPR0521_SLEEP_DELAY_MS);
	FUNC21(&client->dev);

	/*
	 * If sensor write/read is needed in _probe after _use_autosuspend,
	 * sensor needs to be _resumed first using rpr0521_set_power_state().
	 */

	/* IRQ to trigger setup */
	if (client->irq) {
		/* Trigger0 producer setup */
		data->drdy_trigger0 = FUNC5(
			indio_dev->dev.parent,
			"%s-dev%d", indio_dev->name, indio_dev->id);
		if (!data->drdy_trigger0) {
			ret = -ENOMEM;
			goto err_pm_disable;
		}
		data->drdy_trigger0->dev.parent = indio_dev->dev.parent;
		data->drdy_trigger0->ops = &rpr0521_trigger_ops;
		indio_dev->available_scan_masks = rpr0521_available_scan_masks;
		FUNC13(data->drdy_trigger0, indio_dev);

		/* Ties irq to trigger producer handler. */
		ret = FUNC9(&client->dev, client->irq,
			rpr0521_drdy_irq_handler, rpr0521_drdy_irq_thread,
			IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
			RPR0521_IRQ_NAME, indio_dev);
		if (ret < 0) {
			FUNC3(&client->dev, "request irq %d for trigger0 failed\n",
				client->irq);
			goto err_pm_disable;
			}

		ret = FUNC6(indio_dev->dev.parent,
						data->drdy_trigger0);
		if (ret) {
			FUNC3(&client->dev, "iio trigger register failed\n");
			goto err_pm_disable;
		}

		/*
		 * Now whole pipe from physical interrupt (irq defined by
		 * devicetree to device) to trigger0 output is set up.
		 */

		/* Trigger consumer setup */
		ret = FUNC7(indio_dev->dev.parent,
			indio_dev,
			rpr0521_trigger_consumer_store_time,
			rpr0521_trigger_consumer_handler,
			&rpr0521_buffer_setup_ops);
		if (ret < 0) {
			FUNC3(&client->dev, "iio triggered buffer setup failed\n");
			goto err_pm_disable;
		}
	}

	ret = FUNC11(indio_dev);
	if (ret)
		goto err_pm_disable;

	return 0;

err_pm_disable:
	FUNC15(&client->dev);
	FUNC20(&client->dev);
	FUNC17(&client->dev);
err_poweroff:
	FUNC23(data);

	return ret;
}