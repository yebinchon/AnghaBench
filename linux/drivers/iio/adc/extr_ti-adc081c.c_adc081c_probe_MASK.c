#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  of_node; TYPE_3__* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_2__ dev; } ;
struct i2c_device_id {size_t driver_data; } ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; TYPE_1__* driver; } ;
struct i2c_client {TYPE_3__ dev; int /*<<< orphan*/  adapter; } ;
struct adcxx1c_model {int /*<<< orphan*/  channels; int /*<<< orphan*/  bits; } ;
struct adc081c {int /*<<< orphan*/  ref; int /*<<< orphan*/  bits; struct i2c_client* i2c; } ;
struct acpi_device_id {size_t driver_data; } ;
struct TYPE_9__ {int /*<<< orphan*/  acpi_match_table; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  ADC081C_NUM_CHANNELS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct acpi_device_id* FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  adc081c_info ; 
 int /*<<< orphan*/  adc081c_trigger_handler ; 
 struct adcxx1c_model* adcxx1c_models ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 struct iio_dev* FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC10 (struct iio_dev*) ; 
 struct adc081c* FUNC11 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct iio_dev*) ; 
 int FUNC13 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct iio_dev *iio;
	struct adc081c *adc;
	struct adcxx1c_model *model;
	int err;

	if (!FUNC8(client->adapter, I2C_FUNC_SMBUS_WORD_DATA))
		return -EOPNOTSUPP;

	if (FUNC0(&client->dev)) {
		const struct acpi_device_id *ad_id;

		ad_id = FUNC3(client->dev.driver->acpi_match_table,
					  &client->dev);
		if (!ad_id)
			return -ENODEV;
		model = &adcxx1c_models[ad_id->driver_data];
	} else {
		model = &adcxx1c_models[id->driver_data];
	}

	iio = FUNC6(&client->dev, sizeof(*adc));
	if (!iio)
		return -ENOMEM;

	adc = FUNC11(iio);
	adc->i2c = client;
	adc->bits = model->bits;

	adc->ref = FUNC7(&client->dev, "vref");
	if (FUNC1(adc->ref))
		return FUNC2(adc->ref);

	err = FUNC15(adc->ref);
	if (err < 0)
		return err;

	iio->dev.parent = &client->dev;
	iio->dev.of_node = client->dev.of_node;
	iio->name = FUNC5(&client->dev);
	iio->modes = INDIO_DIRECT_MODE;
	iio->info = &adc081c_info;

	iio->channels = model->channels;
	iio->num_channels = ADC081C_NUM_CHANNELS;

	err = FUNC13(iio, NULL, adc081c_trigger_handler, NULL);
	if (err < 0) {
		FUNC4(&client->dev, "iio triggered buffer setup failed\n");
		goto err_regulator_disable;
	}

	err = FUNC10(iio);
	if (err < 0)
		goto err_buffer_cleanup;

	FUNC9(client, iio);

	return 0;

err_buffer_cleanup:
	FUNC12(iio);
err_regulator_disable:
	FUNC14(adc->ref);

	return err;
}