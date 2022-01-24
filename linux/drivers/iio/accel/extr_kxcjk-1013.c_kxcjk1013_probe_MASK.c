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
struct kxcjk_1013_platform_data {int active_high_intr; } ;
struct kxcjk1013_data {int active_high_intr; int chipset; TYPE_3__* motion_trig; TYPE_3__* dready_trig; int /*<<< orphan*/  is_smo8500_device; int /*<<< orphan*/  mutex; struct i2c_client* client; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {char const* name; TYPE_3__* trig; int /*<<< orphan*/  id; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; } ;
struct i2c_device_id {char* name; scalar_t__ driver_data; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;
typedef  enum kx_chipset { ____Placeholder_kx_chipset } kx_chipset ;
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ops; TYPE_2__ dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  KXCJK1013_IRQ_NAME ; 
 int /*<<< orphan*/  KXCJK1013_SLEEP_DELAY_MS ; 
 int /*<<< orphan*/  STANDBY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct kxcjk_1013_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct kxcjk1013_data* FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (struct iio_dev*) ; 
 int FUNC15 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kxcjk1013_buffer_setup_ops ; 
 int /*<<< orphan*/  kxcjk1013_channels ; 
 int FUNC16 (struct kxcjk1013_data*) ; 
 int /*<<< orphan*/  kxcjk1013_data_rdy_trig_poll ; 
 int /*<<< orphan*/  kxcjk1013_event_handler ; 
 int /*<<< orphan*/  kxcjk1013_info ; 
 char* FUNC17 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kxcjk1013_scan_masks ; 
 int /*<<< orphan*/  FUNC18 (struct kxcjk1013_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kxcjk1013_trigger_handler ; 
 int /*<<< orphan*/  kxcjk1013_trigger_ops ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC24(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct kxcjk1013_data *data;
	struct iio_dev *indio_dev;
	struct kxcjk_1013_platform_data *pdata;
	const char *name;
	int ret;

	indio_dev = FUNC4(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC9(indio_dev);
	FUNC7(client, indio_dev);
	data->client = client;

	pdata = FUNC3(&client->dev);
	if (pdata)
		data->active_high_intr = pdata->active_high_intr;
	else
		data->active_high_intr = true; /* default polarity */

	if (id) {
		data->chipset = (enum kx_chipset)(id->driver_data);
		name = id->name;
	} else if (FUNC0(&client->dev)) {
		name = FUNC17(&client->dev,
						   &data->chipset,
						   &data->is_smo8500_device);
	} else
		return -ENODEV;

	ret = FUNC16(data);
	if (ret < 0)
		return ret;

	FUNC19(&data->mutex);

	indio_dev->dev.parent = &client->dev;
	indio_dev->channels = kxcjk1013_channels;
	indio_dev->num_channels = FUNC1(kxcjk1013_channels);
	indio_dev->available_scan_masks = kxcjk1013_scan_masks;
	indio_dev->name = name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &kxcjk1013_info;

	if (client->irq > 0 && !data->is_smo8500_device) {
		ret = FUNC6(&client->dev, client->irq,
						kxcjk1013_data_rdy_trig_poll,
						kxcjk1013_event_handler,
						IRQF_TRIGGER_RISING,
						KXCJK1013_IRQ_NAME,
						indio_dev);
		if (ret)
			goto err_poweroff;

		data->dready_trig = FUNC5(&client->dev,
							   "%s-dev%d",
							   indio_dev->name,
							   indio_dev->id);
		if (!data->dready_trig) {
			ret = -ENOMEM;
			goto err_poweroff;
		}

		data->motion_trig = FUNC5(&client->dev,
							  "%s-any-motion-dev%d",
							  indio_dev->name,
							  indio_dev->id);
		if (!data->motion_trig) {
			ret = -ENOMEM;
			goto err_poweroff;
		}

		data->dready_trig->dev.parent = &client->dev;
		data->dready_trig->ops = &kxcjk1013_trigger_ops;
		FUNC12(data->dready_trig, indio_dev);
		indio_dev->trig = data->dready_trig;
		FUNC10(indio_dev->trig);
		ret = FUNC11(data->dready_trig);
		if (ret)
			goto err_poweroff;

		data->motion_trig->dev.parent = &client->dev;
		data->motion_trig->ops = &kxcjk1013_trigger_ops;
		FUNC12(data->motion_trig, indio_dev);
		ret = FUNC11(data->motion_trig);
		if (ret) {
			data->motion_trig = NULL;
			goto err_trigger_unregister;
		}
	}

	ret = FUNC15(indio_dev,
					 &iio_pollfunc_store_time,
					 kxcjk1013_trigger_handler,
					 &kxcjk1013_buffer_setup_ops);
	if (ret < 0) {
		FUNC2(&client->dev, "iio triggered buffer setup failed\n");
		goto err_trigger_unregister;
	}

	ret = FUNC21(&client->dev);
	if (ret)
		goto err_buffer_cleanup;

	FUNC20(&client->dev);
	FUNC22(&client->dev,
					 KXCJK1013_SLEEP_DELAY_MS);
	FUNC23(&client->dev);

	ret = FUNC8(indio_dev);
	if (ret < 0) {
		FUNC2(&client->dev, "unable to register iio device\n");
		goto err_buffer_cleanup;
	}

	return 0;

err_buffer_cleanup:
	if (data->dready_trig)
		FUNC14(indio_dev);
err_trigger_unregister:
	if (data->dready_trig)
		FUNC13(data->dready_trig);
	if (data->motion_trig)
		FUNC13(data->motion_trig);
err_poweroff:
	FUNC18(data, STANDBY);

	return ret;
}