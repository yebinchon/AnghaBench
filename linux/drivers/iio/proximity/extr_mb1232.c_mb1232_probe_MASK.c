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
struct mb1232_data {int irqnr; int /*<<< orphan*/  ranging; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; TYPE_1__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {int /*<<< orphan*/  adapter; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int I2C_FUNC_SMBUS_READ_BYTE ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct iio_dev* FUNC2 (struct device*,int) ; 
 int FUNC3 (struct device*,struct iio_dev*) ; 
 int FUNC4 (struct device*,struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct mb1232_data* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mb1232_channels ; 
 int /*<<< orphan*/  mb1232_handle_irq ; 
 int /*<<< orphan*/  mb1232_info ; 
 int /*<<< orphan*/  mb1232_trigger_handler ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
					 const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct mb1232_data *data;
	int ret;
	struct device *dev = &client->dev;

	if (!FUNC6(client->adapter,
					I2C_FUNC_SMBUS_READ_BYTE |
					I2C_FUNC_SMBUS_WRITE_BYTE))
		return -ENODEV;

	indio_dev = FUNC2(dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC8(indio_dev);
	FUNC7(client, indio_dev);
	data->client = client;

	indio_dev->info = &mb1232_info;
	indio_dev->name = id->name;
	indio_dev->dev.parent = dev;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = mb1232_channels;
	indio_dev->num_channels = FUNC0(mb1232_channels);

	FUNC11(&data->lock);

	FUNC9(&data->ranging);

	data->irqnr = FUNC10(dev->of_node, 0);
	if (data->irqnr <= 0) {
		/* usage of interrupt is optional */
		data->irqnr = -1;
	} else {
		ret = FUNC5(dev, data->irqnr, mb1232_handle_irq,
				IRQF_TRIGGER_FALLING, id->name, indio_dev);
		if (ret < 0) {
			FUNC1(dev, "request_irq: %d\n", ret);
			return ret;
		}
	}

	ret = FUNC4(dev, indio_dev,
			iio_pollfunc_store_time, mb1232_trigger_handler, NULL);
	if (ret < 0) {
		FUNC1(dev, "setup of iio triggered buffer failed\n");
		return ret;
	}

	return FUNC3(dev, indio_dev);
}