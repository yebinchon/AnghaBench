#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct of_device_id {scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct iio_trigger {int /*<<< orphan*/ * ops; TYPE_1__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int modes; TYPE_2__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; } ;
struct i2c_device_id {size_t driver_data; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;
struct atlas_device {int (* calibration ) (struct atlas_data*) ;int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;
struct atlas_data {struct iio_trigger* trig; int /*<<< orphan*/  work; int /*<<< orphan*/  regmap; struct atlas_device* chip; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATLAS_DRV_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int INDIO_BUFFER_SOFTWARE ; 
 int INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atlas_buffer_setup_ops ; 
 struct atlas_device* atlas_devices ; 
 int /*<<< orphan*/  atlas_dt_ids ; 
 int /*<<< orphan*/  atlas_info ; 
 int /*<<< orphan*/  atlas_interrupt_handler ; 
 int /*<<< orphan*/  atlas_interrupt_trigger_ops ; 
 int /*<<< orphan*/  atlas_regmap_config ; 
 int FUNC2 (struct atlas_data*,int) ; 
 int /*<<< orphan*/  atlas_trigger_handler ; 
 int /*<<< orphan*/  atlas_work_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct iio_trigger* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct atlas_data* FUNC10 (struct iio_dev*) ; 
 int FUNC11 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC12 (struct iio_trigger*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC14 (struct iio_dev*) ; 
 int FUNC15 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (struct atlas_data*) ; 

__attribute__((used)) static int FUNC24(struct i2c_client *client,
		       const struct i2c_device_id *id)
{
	struct atlas_data *data;
	struct atlas_device *chip;
	const struct of_device_id *of_id;
	struct iio_trigger *trig;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC4(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	of_id = FUNC17(atlas_dt_ids, &client->dev);
	if (!of_id)
		chip = &atlas_devices[id->driver_data];
	else
		chip = &atlas_devices[(unsigned long)of_id->data];

	indio_dev->info = &atlas_info;
	indio_dev->name = ATLAS_DRV_NAME;
	indio_dev->channels = chip->channels;
	indio_dev->num_channels = chip->num_channels;
	indio_dev->modes = INDIO_BUFFER_SOFTWARE | INDIO_DIRECT_MODE;
	indio_dev->dev.parent = &client->dev;

	trig = FUNC5(&client->dev, "%s-dev%d",
				      indio_dev->name, indio_dev->id);

	if (!trig)
		return -ENOMEM;

	data = FUNC10(indio_dev);
	data->client = client;
	data->trig = trig;
	data->chip = chip;
	trig->dev.parent = indio_dev->dev.parent;
	trig->ops = &atlas_interrupt_trigger_ops;
	FUNC12(trig, indio_dev);

	FUNC8(client, indio_dev);

	data->regmap = FUNC6(client, &atlas_regmap_config);
	if (FUNC0(data->regmap)) {
		FUNC3(&client->dev, "regmap initialization failed\n");
		return FUNC1(data->regmap);
	}

	ret = FUNC20(&client->dev);
	if (ret)
		return ret;

	if (client->irq <= 0) {
		FUNC3(&client->dev, "no valid irq defined\n");
		return -EINVAL;
	}

	ret = chip->calibration(data);
	if (ret)
		return ret;

	ret = FUNC11(trig);
	if (ret) {
		FUNC3(&client->dev, "failed to register trigger\n");
		return ret;
	}

	ret = FUNC15(indio_dev, &iio_pollfunc_store_time,
		&atlas_trigger_handler, &atlas_buffer_setup_ops);
	if (ret) {
		FUNC3(&client->dev, "cannot setup iio trigger\n");
		goto unregister_trigger;
	}

	FUNC16(&data->work, atlas_work_handler);

	/* interrupt pin toggles on new conversion */
	ret = FUNC7(&client->dev, client->irq,
					NULL, atlas_interrupt_handler,
					IRQF_TRIGGER_RISING |
					IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					"atlas_irq",
					indio_dev);
	if (ret) {
		FUNC3(&client->dev, "request irq (%d) failed\n", client->irq);
		goto unregister_buffer;
	}

	ret = FUNC2(data, 1);
	if (ret) {
		FUNC3(&client->dev, "cannot power device on");
		goto unregister_buffer;
	}

	FUNC19(&client->dev);
	FUNC21(&client->dev, 2500);
	FUNC22(&client->dev);

	ret = FUNC9(indio_dev);
	if (ret) {
		FUNC3(&client->dev, "unable to register device\n");
		goto unregister_pm;
	}

	return 0;

unregister_pm:
	FUNC18(&client->dev);
	FUNC2(data, 0);

unregister_buffer:
	FUNC14(indio_dev);

unregister_trigger:
	FUNC13(data->trig);

	return ret;
}