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
struct ina2xx_platform_data {unsigned int shunt_uohms; } ;
struct ina2xx_chip_info {int avg; TYPE_2__* config; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  regmap; } ;
struct TYPE_9__ {scalar_t__ of_node; TYPE_1__* parent; } ;
struct iio_dev {int modes; TYPE_3__ dev; int /*<<< orphan*/ * setup_ops; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; void* num_channels; void* channels; } ;
struct iio_buffer {int dummy; } ;
struct i2c_device_id {int driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
typedef  enum ina2xx_ids { ____Placeholder_ina2xx_ids } ina2xx_ids ;
struct TYPE_8__ {unsigned int config_default; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INA219_DEFAULT_BRNG ; 
 int /*<<< orphan*/  INA219_DEFAULT_IT ; 
 int /*<<< orphan*/  INA219_DEFAULT_PGA ; 
 int /*<<< orphan*/  INA226_DEFAULT_AVG ; 
 int /*<<< orphan*/  INA226_DEFAULT_IT ; 
 unsigned int INA2XX_RSHUNT_DEFAULT ; 
 int INDIO_BUFFER_SOFTWARE ; 
 int INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 struct ina2xx_platform_data* FUNC4 (TYPE_1__*) ; 
 struct iio_dev* FUNC5 (TYPE_1__*,int) ; 
 struct iio_buffer* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct iio_dev*,struct iio_buffer*) ; 
 int FUNC10 (struct iio_dev*) ; 
 struct ina2xx_chip_info* FUNC11 (struct iio_dev*) ; 
 void* ina219_channels ; 
 int /*<<< orphan*/  ina219_info ; 
 int /*<<< orphan*/  FUNC12 (struct ina2xx_chip_info*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC13 (struct ina2xx_chip_info*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC14 (struct ina2xx_chip_info*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC15 (struct ina2xx_chip_info*,int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ ina226 ; 
 void* ina226_channels ; 
 int /*<<< orphan*/  ina226_info ; 
 int /*<<< orphan*/  FUNC16 (struct ina2xx_chip_info*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC17 (struct ina2xx_chip_info*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC18 (struct ina2xx_chip_info*,int /*<<< orphan*/ ,unsigned int*) ; 
 TYPE_2__* ina2xx_config ; 
 int FUNC19 (struct ina2xx_chip_info*,unsigned int) ; 
 int /*<<< orphan*/  ina2xx_regmap_config ; 
 int /*<<< orphan*/  ina2xx_setup_ops ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (TYPE_1__*) ; 
 scalar_t__ FUNC22 (scalar_t__,char*,unsigned int*) ; 
 int FUNC23 (struct ina2xx_chip_info*,unsigned int) ; 

__attribute__((used)) static int FUNC24(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct ina2xx_chip_info *chip;
	struct iio_dev *indio_dev;
	struct iio_buffer *buffer;
	unsigned int val;
	enum ina2xx_ids type;
	int ret;

	indio_dev = FUNC5(&client->dev, sizeof(*chip));
	if (!indio_dev)
		return -ENOMEM;

	chip = FUNC11(indio_dev);

	/* This is only used for device removal purposes. */
	FUNC8(client, indio_dev);

	chip->regmap = FUNC7(client, &ina2xx_regmap_config);
	if (FUNC1(chip->regmap)) {
		FUNC3(&client->dev, "failed to allocate register map\n");
		return FUNC2(chip->regmap);
	}

	if (client->dev.of_node)
		type = (enum ina2xx_ids)FUNC21(&client->dev);
	else
		type = id->driver_data;
	chip->config = &ina2xx_config[type];

	FUNC20(&chip->state_lock);

	if (FUNC22(client->dev.of_node,
				 "shunt-resistor", &val) < 0) {
		struct ina2xx_platform_data *pdata =
		    FUNC4(&client->dev);

		if (pdata)
			val = pdata->shunt_uohms;
		else
			val = INA2XX_RSHUNT_DEFAULT;
	}

	ret = FUNC23(chip, val);
	if (ret)
		return ret;

	/* Patch the current config register with default. */
	val = chip->config->config_default;

	if (id->driver_data == ina226) {
		FUNC16(chip, INA226_DEFAULT_AVG, &val);
		FUNC17(chip, INA226_DEFAULT_IT, &val);
		FUNC18(chip, INA226_DEFAULT_IT, &val);
	} else {
		chip->avg = 1;
		FUNC12(chip, INA219_DEFAULT_IT, &val);
		FUNC13(chip, INA219_DEFAULT_IT, &val);
		FUNC14(chip, INA219_DEFAULT_BRNG, &val);
		FUNC15(chip, INA219_DEFAULT_PGA, &val);
	}

	ret = FUNC19(chip, val);
	if (ret) {
		FUNC3(&client->dev, "error configuring the device\n");
		return ret;
	}

	indio_dev->modes = INDIO_DIRECT_MODE | INDIO_BUFFER_SOFTWARE;
	indio_dev->dev.parent = &client->dev;
	indio_dev->dev.of_node = client->dev.of_node;
	if (id->driver_data == ina226) {
		indio_dev->channels = ina226_channels;
		indio_dev->num_channels = FUNC0(ina226_channels);
		indio_dev->info = &ina226_info;
	} else {
		indio_dev->channels = ina219_channels;
		indio_dev->num_channels = FUNC0(ina219_channels);
		indio_dev->info = &ina219_info;
	}
	indio_dev->name = id->name;
	indio_dev->setup_ops = &ina2xx_setup_ops;

	buffer = FUNC6(&indio_dev->dev);
	if (!buffer)
		return -ENOMEM;

	FUNC9(indio_dev, buffer);

	return FUNC10(indio_dev);
}