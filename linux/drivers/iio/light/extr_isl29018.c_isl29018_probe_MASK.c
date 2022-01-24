#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct isl29018_chip {int type; int calibscale; size_t int_time; int suspended; int /*<<< orphan*/  regmap; int /*<<< orphan*/  vcc_reg; int /*<<< orphan*/  scale; scalar_t__ ucalibscale; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {char const* name; int /*<<< orphan*/  modes; TYPE_1__ dev; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  info; } ;
struct i2c_device_id {char* name; int driver_data; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  indio_info; int /*<<< orphan*/  regmap_cfg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 size_t ISL29018_INT_TIME_16 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct isl29018_chip*) ; 
 struct iio_dev* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct iio_dev*) ; 
 struct isl29018_chip* FUNC10 (struct iio_dev*) ; 
 TYPE_2__* isl29018_chip_info_tbl ; 
 int FUNC11 (struct isl29018_chip*) ; 
 int /*<<< orphan*/  isl29018_disable_regulator_action ; 
 char* FUNC12 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ ** isl29018_scales ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct isl29018_chip *chip;
	struct iio_dev *indio_dev;
	int err;
	const char *name = NULL;
	int dev_id = 0;

	indio_dev = FUNC5(&client->dev, sizeof(*chip));
	if (!indio_dev)
		return -ENOMEM;

	chip = FUNC10(indio_dev);

	FUNC9(client, indio_dev);

	if (id) {
		name = id->name;
		dev_id = id->driver_data;
	}

	if (FUNC0(&client->dev))
		name = FUNC12(&client->dev, &dev_id);

	FUNC13(&chip->lock);

	chip->type = dev_id;
	chip->calibscale = 1;
	chip->ucalibscale = 0;
	chip->int_time = ISL29018_INT_TIME_16;
	chip->scale = isl29018_scales[chip->int_time][0];
	chip->suspended = false;

	chip->vcc_reg = FUNC8(&client->dev, "vcc");
	if (FUNC1(chip->vcc_reg)) {
		err = FUNC2(chip->vcc_reg);
		if (err != -EPROBE_DEFER)
			FUNC3(&client->dev, "failed to get VCC regulator!\n");
		return err;
	}

	err = FUNC14(chip->vcc_reg);
	if (err) {
		FUNC3(&client->dev, "failed to enable VCC regulator!\n");
		return err;
	}

	err = FUNC4(&client->dev, isl29018_disable_regulator_action,
				 chip);
	if (err) {
		FUNC3(&client->dev, "failed to setup regulator cleanup action!\n");
		return err;
	}

	chip->regmap = FUNC7(client,
				isl29018_chip_info_tbl[dev_id].regmap_cfg);
	if (FUNC1(chip->regmap)) {
		err = FUNC2(chip->regmap);
		FUNC3(&client->dev, "regmap initialization fails: %d\n", err);
		return err;
	}

	err = FUNC11(chip);
	if (err)
		return err;

	indio_dev->info = isl29018_chip_info_tbl[dev_id].indio_info;
	indio_dev->channels = isl29018_chip_info_tbl[dev_id].channels;
	indio_dev->num_channels = isl29018_chip_info_tbl[dev_id].num_channels;
	indio_dev->name = name;
	indio_dev->dev.parent = &client->dev;
	indio_dev->modes = INDIO_DIRECT_MODE;

	return FUNC6(&client->dev, indio_dev);
}