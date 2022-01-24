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
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int modes; int /*<<< orphan*/ * setup_ops; int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct iio_buffer {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;
struct apds9960_data {int /*<<< orphan*/  lock; struct iio_dev* indio_dev; struct i2c_client* client; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  APDS9960_DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int INDIO_BUFFER_SOFTWARE ; 
 int INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  apds9960_buffer_setup_ops ; 
 int /*<<< orphan*/  apds9960_channels ; 
 int FUNC3 (struct apds9960_data*) ; 
 int /*<<< orphan*/  apds9960_info ; 
 int /*<<< orphan*/  apds9960_interrupt_handler ; 
 int FUNC4 (struct apds9960_data*) ; 
 int /*<<< orphan*/  apds9960_regmap_config ; 
 int /*<<< orphan*/  apds9960_scan_masks ; 
 int /*<<< orphan*/  FUNC5 (struct apds9960_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC7 (int /*<<< orphan*/ *,int) ; 
 struct iio_buffer* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct iio_dev*,struct iio_buffer*) ; 
 int FUNC13 (struct iio_dev*) ; 
 struct apds9960_data* FUNC14 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct apds9960_data *data;
	struct iio_buffer *buffer;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC7(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	buffer = FUNC8(&client->dev);
	if (!buffer)
		return -ENOMEM;

	FUNC12(indio_dev, buffer);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &apds9960_info;
	indio_dev->name = APDS9960_DRV_NAME;
	indio_dev->channels = apds9960_channels;
	indio_dev->num_channels = FUNC0(apds9960_channels);
	indio_dev->available_scan_masks = apds9960_scan_masks;
	indio_dev->modes = (INDIO_BUFFER_SOFTWARE | INDIO_DIRECT_MODE);
	indio_dev->setup_ops = &apds9960_buffer_setup_ops;

	data = FUNC14(indio_dev);
	FUNC11(client, indio_dev);

	data->regmap = FUNC9(client, &apds9960_regmap_config);
	if (FUNC1(data->regmap)) {
		FUNC6(&client->dev, "regmap initialization failed.\n");
		return FUNC2(data->regmap);
	}

	data->client = client;
	data->indio_dev = indio_dev;
	FUNC15(&data->lock);

	ret = FUNC17(&client->dev);
	if (ret)
		goto error_power_down;

	FUNC16(&client->dev);
	FUNC18(&client->dev, 5000);
	FUNC19(&client->dev);

	FUNC5(data, true);

	ret = FUNC4(data);
	if (ret)
		goto error_power_down;

	ret = FUNC3(data);
	if (ret)
		goto error_power_down;

	if (client->irq <= 0) {
		FUNC6(&client->dev, "no valid irq defined\n");
		ret = -EINVAL;
		goto error_power_down;
	}
	ret = FUNC10(&client->dev, client->irq,
					NULL, apds9960_interrupt_handler,
					IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					"apds9960_event",
					indio_dev);
	if (ret) {
		FUNC6(&client->dev, "request irq (%d) failed\n", client->irq);
		goto error_power_down;
	}

	ret = FUNC13(indio_dev);
	if (ret)
		goto error_power_down;

	FUNC5(data, false);

	return 0;

error_power_down:
	FUNC5(data, false);

	return ret;
}