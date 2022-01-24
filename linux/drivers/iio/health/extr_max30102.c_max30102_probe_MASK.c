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
struct max30102_data {int chip_id; int /*<<< orphan*/  regmap; int /*<<< orphan*/  lock; struct i2c_client* client; struct iio_dev* indio_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int modes; int /*<<< orphan*/  available_scan_masks; void* num_channels; void* channels; TYPE_1__ dev; int /*<<< orphan*/ * setup_ops; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; } ;
struct iio_buffer {int dummy; } ;
struct i2c_device_id {int driver_data; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int INDIO_BUFFER_SOFTWARE ; 
 int INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX30102_DRV_NAME ; 
 unsigned int MAX30102_PART_NUMBER ; 
 int /*<<< orphan*/  MAX30102_REG_MODE_CONFIG_MODE_NONE ; 
 int /*<<< orphan*/  MAX30102_REG_PART_ID ; 
 int /*<<< orphan*/  MAX30102_REG_REV_ID ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct iio_buffer* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct iio_dev*,struct iio_buffer*) ; 
 int FUNC11 (struct iio_dev*) ; 
 struct max30102_data* FUNC12 (struct iio_dev*) ; 
#define  max30102 129 
 int /*<<< orphan*/  max30102_buffer_setup_ops ; 
 void* max30102_channels ; 
 int FUNC13 (struct max30102_data*) ; 
 int /*<<< orphan*/  max30102_info ; 
 int /*<<< orphan*/  max30102_interrupt_handler ; 
 int /*<<< orphan*/  max30102_regmap_config ; 
 int /*<<< orphan*/  max30102_scan_masks ; 
 int FUNC14 (struct max30102_data*,int /*<<< orphan*/ ,int) ; 
#define  max30105 128 
 void* max30105_channels ; 
 int /*<<< orphan*/  max30105_scan_masks ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC17(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct max30102_data *data;
	struct iio_buffer *buffer;
	struct iio_dev *indio_dev;
	int ret;
	unsigned int reg;

	indio_dev = FUNC5(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	buffer = FUNC6(&client->dev);
	if (!buffer)
		return -ENOMEM;

	FUNC10(indio_dev, buffer);

	indio_dev->name = MAX30102_DRV_NAME;
	indio_dev->info = &max30102_info;
	indio_dev->modes = (INDIO_BUFFER_SOFTWARE | INDIO_DIRECT_MODE);
	indio_dev->setup_ops = &max30102_buffer_setup_ops;
	indio_dev->dev.parent = &client->dev;

	data = FUNC12(indio_dev);
	data->indio_dev = indio_dev;
	data->client = client;
	data->chip_id = id->driver_data;

	FUNC15(&data->lock);
	FUNC9(client, indio_dev);

	switch (data->chip_id) {
	case max30105:
		indio_dev->channels = max30105_channels;
		indio_dev->num_channels = FUNC0(max30105_channels);
		indio_dev->available_scan_masks = max30105_scan_masks;
		break;
	case max30102:
		indio_dev->channels = max30102_channels;
		indio_dev->num_channels = FUNC0(max30102_channels);
		indio_dev->available_scan_masks = max30102_scan_masks;
		break;
	default:
		return -ENODEV;
	}

	data->regmap = FUNC7(client, &max30102_regmap_config);
	if (FUNC1(data->regmap)) {
		FUNC4(&client->dev, "regmap initialization failed\n");
		return FUNC2(data->regmap);
	}

	/* check part ID */
	ret = FUNC16(data->regmap, MAX30102_REG_PART_ID, &reg);
	if (ret)
		return ret;
	if (reg != MAX30102_PART_NUMBER)
		return -ENODEV;

	/* show revision ID */
	ret = FUNC16(data->regmap, MAX30102_REG_REV_ID, &reg);
	if (ret)
		return ret;
	FUNC3(&client->dev, "max3010x revision %02x\n", reg);

	/* clear mode setting, chip shutdown */
	ret = FUNC14(data, MAX30102_REG_MODE_CONFIG_MODE_NONE,
				     false);
	if (ret)
		return ret;

	ret = FUNC13(data);
	if (ret)
		return ret;

	if (client->irq <= 0) {
		FUNC4(&client->dev, "no valid irq defined\n");
		return -EINVAL;
	}

	ret = FUNC8(&client->dev, client->irq,
					NULL, max30102_interrupt_handler,
					IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					"max30102_irq", indio_dev);
	if (ret) {
		FUNC4(&client->dev, "request irq (%d) failed\n", client->irq);
		return ret;
	}

	return FUNC11(indio_dev);
}