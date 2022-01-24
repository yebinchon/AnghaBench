#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kmx61_data {void* acc_dready_trig; void* mag_dready_trig; void* motion_trig; void* acc_indio_dev; void* mag_indio_dev; struct i2c_client* client; int /*<<< orphan*/  lock; } ;
struct i2c_device_id {char* name; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC2 (void*) ; 
 int KMX61_ACC ; 
 int /*<<< orphan*/  KMX61_ALL_STBY ; 
 int /*<<< orphan*/  KMX61_IRQ_NAME ; 
 int KMX61_MAG ; 
 int /*<<< orphan*/  KMX61_SLEEP_DELAY_MS ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct kmx61_data* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kmx61_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct kmx61_data*) ; 
 int FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int FUNC12 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kmx61_acc_channels ; 
 int /*<<< orphan*/  kmx61_acc_info ; 
 int FUNC13 (struct kmx61_data*) ; 
 int /*<<< orphan*/  kmx61_data_rdy_trig_poll ; 
 int /*<<< orphan*/  kmx61_event_handler ; 
 void* FUNC14 (struct kmx61_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  kmx61_mag_channels ; 
 int /*<<< orphan*/  kmx61_mag_info ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct kmx61_data*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  kmx61_trigger_handler ; 
 void* FUNC17 (struct kmx61_data*,void*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct i2c_client *client,
		       const struct i2c_device_id *id)
{
	int ret;
	struct kmx61_data *data;
	const char *name = NULL;

	data = FUNC5(&client->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC7(client, data);
	data->client = client;

	FUNC18(&data->lock);

	if (id)
		name = id->name;
	else if (FUNC0(&client->dev))
		name = FUNC15(&client->dev);
	else
		return -ENODEV;

	data->acc_indio_dev =
		FUNC14(data, &kmx61_acc_info,
				     kmx61_acc_channels,
				     FUNC1(kmx61_acc_channels),
				     name);
	if (FUNC2(data->acc_indio_dev))
		return FUNC3(data->acc_indio_dev);

	data->mag_indio_dev =
		FUNC14(data, &kmx61_mag_info,
				     kmx61_mag_channels,
				     FUNC1(kmx61_mag_channels),
				     name);
	if (FUNC2(data->mag_indio_dev))
		return FUNC3(data->mag_indio_dev);

	ret = FUNC13(data);
	if (ret < 0)
		return ret;

	if (client->irq > 0) {
		ret = FUNC6(&client->dev, client->irq,
						kmx61_data_rdy_trig_poll,
						kmx61_event_handler,
						IRQF_TRIGGER_RISING,
						KMX61_IRQ_NAME,
						data);
		if (ret)
			goto err_chip_uninit;

		data->acc_dready_trig =
			FUNC17(data, data->acc_indio_dev,
					    "dready");
		if (FUNC2(data->acc_dready_trig)) {
			ret = FUNC3(data->acc_dready_trig);
			goto err_chip_uninit;
		}

		data->mag_dready_trig =
			FUNC17(data, data->mag_indio_dev,
					    "dready");
		if (FUNC2(data->mag_dready_trig)) {
			ret = FUNC3(data->mag_dready_trig);
			goto err_trigger_unregister_acc_dready;
		}

		data->motion_trig =
			FUNC17(data, data->acc_indio_dev,
					    "any-motion");
		if (FUNC2(data->motion_trig)) {
			ret = FUNC3(data->motion_trig);
			goto err_trigger_unregister_mag_dready;
		}

		ret = FUNC12(data->acc_indio_dev,
						 &iio_pollfunc_store_time,
						 kmx61_trigger_handler,
						 NULL);
		if (ret < 0) {
			FUNC4(&data->client->dev,
				"Failed to setup acc triggered buffer\n");
			goto err_trigger_unregister_motion;
		}

		ret = FUNC12(data->mag_indio_dev,
						 &iio_pollfunc_store_time,
						 kmx61_trigger_handler,
						 NULL);
		if (ret < 0) {
			FUNC4(&data->client->dev,
				"Failed to setup mag triggered buffer\n");
			goto err_buffer_cleanup_acc;
		}
	}

	ret = FUNC20(&client->dev);
	if (ret < 0)
		goto err_buffer_cleanup_mag;

	FUNC19(&client->dev);
	FUNC21(&client->dev, KMX61_SLEEP_DELAY_MS);
	FUNC22(&client->dev);

	ret = FUNC8(data->acc_indio_dev);
	if (ret < 0) {
		FUNC4(&client->dev, "Failed to register acc iio device\n");
		goto err_buffer_cleanup_mag;
	}

	ret = FUNC8(data->mag_indio_dev);
	if (ret < 0) {
		FUNC4(&client->dev, "Failed to register mag iio device\n");
		goto err_iio_unregister_acc;
	}

	return 0;

err_iio_unregister_acc:
	FUNC9(data->acc_indio_dev);
err_buffer_cleanup_mag:
	if (client->irq > 0)
		FUNC11(data->mag_indio_dev);
err_buffer_cleanup_acc:
	if (client->irq > 0)
		FUNC11(data->acc_indio_dev);
err_trigger_unregister_motion:
	FUNC10(data->motion_trig);
err_trigger_unregister_mag_dready:
	FUNC10(data->mag_dready_trig);
err_trigger_unregister_acc_dready:
	FUNC10(data->acc_dready_trig);
err_chip_uninit:
	FUNC16(data, KMX61_ALL_STBY, KMX61_ACC | KMX61_MAG, true);
	return ret;
}