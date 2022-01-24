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
struct tcs3472_data {int control; int atime; int low_thresh; int high_thresh; int apers; int enable; struct i2c_client* client; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  TCS3472_AIHT ; 
 int /*<<< orphan*/  TCS3472_AILT ; 
 int /*<<< orphan*/  TCS3472_ATIME ; 
 int /*<<< orphan*/  TCS3472_CONTROL ; 
 int /*<<< orphan*/  TCS3472_DRV_NAME ; 
 int /*<<< orphan*/  TCS3472_ENABLE ; 
 int TCS3472_ENABLE_AEN ; 
 int TCS3472_ENABLE_AIEN ; 
 int TCS3472_ENABLE_PON ; 
 int /*<<< orphan*/  TCS3472_ID ; 
 int /*<<< orphan*/  TCS3472_PERS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct iio_dev*) ; 
 struct tcs3472_data* FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct iio_dev*) ; 
 int FUNC11 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  tcs3472_channels ; 
 int /*<<< orphan*/  tcs3472_event_handler ; 
 int /*<<< orphan*/  tcs3472_info ; 
 int /*<<< orphan*/  tcs3472_trigger_handler ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct tcs3472_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC2(&client->dev, sizeof(*data));
	if (indio_dev == NULL)
		return -ENOMEM;

	data = FUNC9(indio_dev);
	FUNC4(client, indio_dev);
	data->client = client;
	FUNC12(&data->lock);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &tcs3472_info;
	indio_dev->name = TCS3472_DRV_NAME;
	indio_dev->channels = tcs3472_channels;
	indio_dev->num_channels = FUNC0(tcs3472_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC5(data->client, TCS3472_ID);
	if (ret < 0)
		return ret;

	if (ret == 0x44)
		FUNC1(&client->dev, "TCS34721/34725 found\n");
	else if (ret == 0x4d)
		FUNC1(&client->dev, "TCS34723/34727 found\n");
	else
		return -ENODEV;

	ret = FUNC5(data->client, TCS3472_CONTROL);
	if (ret < 0)
		return ret;
	data->control = ret;

	ret = FUNC5(data->client, TCS3472_ATIME);
	if (ret < 0)
		return ret;
	data->atime = ret;

	ret = FUNC6(data->client, TCS3472_AILT);
	if (ret < 0)
		return ret;
	data->low_thresh = ret;

	ret = FUNC6(data->client, TCS3472_AIHT);
	if (ret < 0)
		return ret;
	data->high_thresh = ret;

	data->apers = 1;
	ret = FUNC7(data->client, TCS3472_PERS,
					data->apers);
	if (ret < 0)
		return ret;

	ret = FUNC5(data->client, TCS3472_ENABLE);
	if (ret < 0)
		return ret;

	/* enable device */
	data->enable = ret | TCS3472_ENABLE_PON | TCS3472_ENABLE_AEN;
	data->enable &= ~TCS3472_ENABLE_AIEN;
	ret = FUNC7(data->client, TCS3472_ENABLE,
		data->enable);
	if (ret < 0)
		return ret;

	ret = FUNC11(indio_dev, NULL,
		tcs3472_trigger_handler, NULL);
	if (ret < 0)
		return ret;

	if (client->irq) {
		ret = FUNC13(client->irq, NULL,
					   tcs3472_event_handler,
					   IRQF_TRIGGER_FALLING | IRQF_SHARED |
					   IRQF_ONESHOT,
					   client->name, indio_dev);
		if (ret)
			goto buffer_cleanup;
	}

	ret = FUNC8(indio_dev);
	if (ret < 0)
		goto free_irq;

	return 0;

free_irq:
	FUNC3(client->irq, indio_dev);
buffer_cleanup:
	FUNC10(indio_dev);
	return ret;
}