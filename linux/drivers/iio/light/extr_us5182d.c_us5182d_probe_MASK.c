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
struct us5182d_data {scalar_t__ default_continuous; struct i2c_client* client; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  US5182D_CFG0_SHUTDOWN_EN ; 
 int US5182D_CHIPID ; 
 int /*<<< orphan*/  US5182D_DRV_NAME ; 
 int /*<<< orphan*/  US5182D_REG_CHIPID ; 
 int /*<<< orphan*/  US5182D_SLEEP_MS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct iio_dev*) ; 
 struct us5182d_data* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  us5182d_channels ; 
 int FUNC14 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct iio_dev*) ; 
 int /*<<< orphan*/  us5182d_info ; 
 int FUNC16 (struct iio_dev*) ; 
 int /*<<< orphan*/  us5182d_irq_thread_handler ; 
 int /*<<< orphan*/  FUNC17 (struct us5182d_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct us5182d_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC3(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC8(indio_dev);
	FUNC5(client, indio_dev);
	data->client = client;

	FUNC9(&data->lock);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &us5182d_info;
	indio_dev->name = US5182D_DRV_NAME;
	indio_dev->channels = us5182d_channels;
	indio_dev->num_channels = FUNC0(us5182d_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC6(data->client, US5182D_REG_CHIPID);
	if (ret != US5182D_CHIPID) {
		FUNC1(&data->client->dev,
			"Failed to detect US5182 light chip\n");
		return (ret < 0) ? ret : -ENODEV;
	}

	if (client->irq > 0) {
		ret = FUNC4(&client->dev, client->irq, NULL,
						us5182d_irq_thread_handler,
						IRQF_TRIGGER_LOW | IRQF_ONESHOT,
						"us5182d-irq", indio_dev);
		if (ret < 0)
			return ret;
	} else
		FUNC2(&client->dev, "no valid irq found\n");

	FUNC15(indio_dev);
	ret = FUNC16(indio_dev);
	if (ret < 0)
		return ret;

	ret = FUNC14(indio_dev);
	if (ret < 0)
		goto out_err;

	if (data->default_continuous) {
		ret = FUNC11(&client->dev);
		if (ret < 0)
			goto out_err;
	}

	FUNC10(&client->dev);
	FUNC12(&client->dev,
					 US5182D_SLEEP_MS);
	FUNC13(&client->dev);

	ret = FUNC7(indio_dev);
	if (ret < 0)
		goto out_err;

	return 0;

out_err:
	FUNC17(data, US5182D_CFG0_SHUTDOWN_EN);
	return ret;

}