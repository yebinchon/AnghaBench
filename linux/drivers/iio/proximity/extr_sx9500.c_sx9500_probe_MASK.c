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
struct sx9500_data {int trigger_enabled; TYPE_3__* trig; int /*<<< orphan*/  regmap; int /*<<< orphan*/  completion; int /*<<< orphan*/  mutex; struct i2c_client* client; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ops; TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SX9500_DRIVER_NAME ; 
 int /*<<< orphan*/  SX9500_IRQ_NAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC9 (struct iio_dev*) ; 
 struct sx9500_data* FUNC10 (struct iio_dev*) ; 
 int FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (struct iio_dev*) ; 
 int FUNC15 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sx9500_buffer_setup_ops ; 
 int /*<<< orphan*/  sx9500_channels ; 
 int /*<<< orphan*/  FUNC18 (struct i2c_client*,struct sx9500_data*) ; 
 int /*<<< orphan*/  sx9500_info ; 
 int FUNC19 (struct iio_dev*) ; 
 int /*<<< orphan*/  sx9500_irq_handler ; 
 int /*<<< orphan*/  sx9500_irq_thread_handler ; 
 int /*<<< orphan*/  sx9500_regmap_config ; 
 int /*<<< orphan*/  sx9500_trigger_handler ; 
 int /*<<< orphan*/  sx9500_trigger_ops ; 

__attribute__((used)) static int FUNC20(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int ret;
	struct iio_dev *indio_dev;
	struct sx9500_data *data;

	indio_dev = FUNC4(&client->dev, sizeof(*data));
	if (indio_dev == NULL)
		return -ENOMEM;

	data = FUNC10(indio_dev);
	data->client = client;
	FUNC17(&data->mutex);
	FUNC16(&data->completion);
	data->trigger_enabled = false;

	data->regmap = FUNC6(client, &sx9500_regmap_config);
	if (FUNC1(data->regmap))
		return FUNC2(data->regmap);

	indio_dev->dev.parent = &client->dev;
	indio_dev->name = SX9500_DRIVER_NAME;
	indio_dev->channels = sx9500_channels;
	indio_dev->num_channels = FUNC0(sx9500_channels);
	indio_dev->info = &sx9500_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	FUNC8(client, indio_dev);

	FUNC18(client, data);

	ret = FUNC19(indio_dev);
	if (ret < 0)
		return ret;

	if (client->irq <= 0)
		FUNC3(&client->dev, "no valid irq found\n");
	else {
		ret = FUNC7(&client->dev, client->irq,
				sx9500_irq_handler, sx9500_irq_thread_handler,
				IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
				SX9500_IRQ_NAME, indio_dev);
		if (ret < 0)
			return ret;

		data->trig = FUNC5(&client->dev,
				"%s-dev%d", indio_dev->name, indio_dev->id);
		if (!data->trig)
			return -ENOMEM;

		data->trig->dev.parent = &client->dev;
		data->trig->ops = &sx9500_trigger_ops;
		FUNC12(data->trig, indio_dev);

		ret = FUNC11(data->trig);
		if (ret)
			return ret;
	}

	ret = FUNC15(indio_dev, NULL,
					 sx9500_trigger_handler,
					 &sx9500_buffer_setup_ops);
	if (ret < 0)
		goto out_trigger_unregister;

	ret = FUNC9(indio_dev);
	if (ret < 0)
		goto out_buffer_cleanup;

	return 0;

out_buffer_cleanup:
	FUNC14(indio_dev);
out_trigger_unregister:
	if (client->irq > 0)
		FUNC13(data->trig);

	return ret;
}