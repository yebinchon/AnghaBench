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
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; scalar_t__ irq; } ;
struct apds9300_data {int /*<<< orphan*/  mutex; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  APDS9300_DRV_NAME ; 
 int /*<<< orphan*/  APDS9300_IRQ_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  apds9300_channels ; 
 int FUNC1 (struct apds9300_data*) ; 
 int /*<<< orphan*/  apds9300_info ; 
 int /*<<< orphan*/  apds9300_info_no_irq ; 
 int /*<<< orphan*/  apds9300_interrupt_handler ; 
 int /*<<< orphan*/  FUNC2 (struct apds9300_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*) ; 
 struct apds9300_data* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct apds9300_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC4(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC8(indio_dev);
	FUNC6(client, indio_dev);
	data->client = client;

	ret = FUNC1(data);
	if (ret < 0)
		goto err;

	FUNC9(&data->mutex);

	indio_dev->dev.parent = &client->dev;
	indio_dev->channels = apds9300_channels;
	indio_dev->num_channels = FUNC0(apds9300_channels);
	indio_dev->name = APDS9300_DRV_NAME;
	indio_dev->modes = INDIO_DIRECT_MODE;

	if (client->irq)
		indio_dev->info = &apds9300_info;
	else
		indio_dev->info = &apds9300_info_no_irq;

	if (client->irq) {
		ret = FUNC5(&client->dev, client->irq,
				NULL, apds9300_interrupt_handler,
				IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
				APDS9300_IRQ_NAME, indio_dev);
		if (ret) {
			FUNC3(&client->dev, "irq request error %d\n", -ret);
			goto err;
		}
	}

	ret = FUNC7(indio_dev);
	if (ret < 0)
		goto err;

	return 0;

err:
	/* Ensure that power off in case of error */
	FUNC2(data, 0);
	return ret;
}