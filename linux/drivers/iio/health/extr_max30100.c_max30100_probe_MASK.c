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
struct max30100_data {int /*<<< orphan*/  regmap; int /*<<< orphan*/  lock; struct i2c_client* client; struct iio_dev* indio_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int modes; TYPE_1__ dev; int /*<<< orphan*/ * setup_ops; int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  num_channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; } ;
struct iio_buffer {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int INDIO_BUFFER_SOFTWARE ; 
 int INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX30100_DRV_NAME ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct iio_buffer* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct iio_dev*,struct iio_buffer*) ; 
 int FUNC10 (struct iio_dev*) ; 
 struct max30100_data* FUNC11 (struct iio_dev*) ; 
 int /*<<< orphan*/  max30100_buffer_setup_ops ; 
 int /*<<< orphan*/  max30100_channels ; 
 int FUNC12 (struct max30100_data*) ; 
 int /*<<< orphan*/  max30100_info ; 
 int /*<<< orphan*/  max30100_interrupt_handler ; 
 int /*<<< orphan*/  max30100_regmap_config ; 
 int /*<<< orphan*/  max30100_scan_masks ; 
 int /*<<< orphan*/  FUNC13 (struct max30100_data*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct max30100_data *data;
	struct iio_buffer *buffer;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC4(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	buffer = FUNC5(&client->dev);
	if (!buffer)
		return -ENOMEM;

	FUNC9(indio_dev, buffer);

	indio_dev->name = MAX30100_DRV_NAME;
	indio_dev->channels = max30100_channels;
	indio_dev->info = &max30100_info;
	indio_dev->num_channels = FUNC0(max30100_channels);
	indio_dev->available_scan_masks = max30100_scan_masks;
	indio_dev->modes = (INDIO_BUFFER_SOFTWARE | INDIO_DIRECT_MODE);
	indio_dev->setup_ops = &max30100_buffer_setup_ops;
	indio_dev->dev.parent = &client->dev;

	data = FUNC11(indio_dev);
	data->indio_dev = indio_dev;
	data->client = client;

	FUNC14(&data->lock);
	FUNC8(client, indio_dev);

	data->regmap = FUNC6(client, &max30100_regmap_config);
	if (FUNC1(data->regmap)) {
		FUNC3(&client->dev, "regmap initialization failed.\n");
		return FUNC2(data->regmap);
	}
	FUNC13(data, false);

	ret = FUNC12(data);
	if (ret)
		return ret;

	if (client->irq <= 0) {
		FUNC3(&client->dev, "no valid irq defined\n");
		return -EINVAL;
	}
	ret = FUNC7(&client->dev, client->irq,
					NULL, max30100_interrupt_handler,
					IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					"max30100_irq", indio_dev);
	if (ret) {
		FUNC3(&client->dev, "request irq (%d) failed\n", client->irq);
		return ret;
	}

	return FUNC10(indio_dev);
}