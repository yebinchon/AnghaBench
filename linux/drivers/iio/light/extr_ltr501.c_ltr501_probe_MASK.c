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
struct regmap {int dummy; } ;
struct ltr501_data {TYPE_2__* chip_info; struct regmap* regmap; struct regmap* reg_ps_prst; struct regmap* reg_als_prst; struct regmap* reg_ps_rate; struct regmap* reg_als_rate; struct regmap* reg_ps_intr; struct regmap* reg_als_intr; struct regmap* reg_it; int /*<<< orphan*/  lock_ps; int /*<<< orphan*/  lock_als; struct i2c_client* client; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {char const* name; int /*<<< orphan*/  info; int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; } ;
struct i2c_device_id {char* name; int driver_data; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int partid; int /*<<< orphan*/  info_no_irq; int /*<<< orphan*/  no_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  LTR501_PART_ID ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC9 (struct iio_dev*) ; 
 struct ltr501_data* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct iio_dev*) ; 
 int FUNC12 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* ltr501_chip_info_tbl ; 
 int FUNC13 (struct ltr501_data*) ; 
 int /*<<< orphan*/  ltr501_interrupt_handler ; 
 char* FUNC14 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct ltr501_data*) ; 
 int /*<<< orphan*/  ltr501_regmap_config ; 
 int /*<<< orphan*/  ltr501_trigger_handler ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reg_field_als_intr ; 
 int /*<<< orphan*/  reg_field_als_prst ; 
 int /*<<< orphan*/  reg_field_als_rate ; 
 int /*<<< orphan*/  reg_field_it ; 
 int /*<<< orphan*/  reg_field_ps_intr ; 
 int /*<<< orphan*/  reg_field_ps_prst ; 
 int /*<<< orphan*/  reg_field_ps_rate ; 
 int FUNC17 (struct regmap*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC18(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct ltr501_data *data;
	struct iio_dev *indio_dev;
	struct regmap *regmap;
	int ret, partid, chip_idx = 0;
	const char *name = NULL;

	indio_dev = FUNC4(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	regmap = FUNC6(client, &ltr501_regmap_config);
	if (FUNC1(regmap)) {
		FUNC3(&client->dev, "Regmap initialization failed.\n");
		return FUNC2(regmap);
	}

	data = FUNC10(indio_dev);
	FUNC8(client, indio_dev);
	data->client = client;
	data->regmap = regmap;
	FUNC16(&data->lock_als);
	FUNC16(&data->lock_ps);

	data->reg_it = FUNC5(&client->dev, regmap,
					       reg_field_it);
	if (FUNC1(data->reg_it)) {
		FUNC3(&client->dev, "Integ time reg field init failed.\n");
		return FUNC2(data->reg_it);
	}

	data->reg_als_intr = FUNC5(&client->dev, regmap,
						     reg_field_als_intr);
	if (FUNC1(data->reg_als_intr)) {
		FUNC3(&client->dev, "ALS intr mode reg field init failed\n");
		return FUNC2(data->reg_als_intr);
	}

	data->reg_ps_intr = FUNC5(&client->dev, regmap,
						    reg_field_ps_intr);
	if (FUNC1(data->reg_ps_intr)) {
		FUNC3(&client->dev, "PS intr mode reg field init failed.\n");
		return FUNC2(data->reg_ps_intr);
	}

	data->reg_als_rate = FUNC5(&client->dev, regmap,
						     reg_field_als_rate);
	if (FUNC1(data->reg_als_rate)) {
		FUNC3(&client->dev, "ALS samp rate field init failed.\n");
		return FUNC2(data->reg_als_rate);
	}

	data->reg_ps_rate = FUNC5(&client->dev, regmap,
						    reg_field_ps_rate);
	if (FUNC1(data->reg_ps_rate)) {
		FUNC3(&client->dev, "PS samp rate field init failed.\n");
		return FUNC2(data->reg_ps_rate);
	}

	data->reg_als_prst = FUNC5(&client->dev, regmap,
						     reg_field_als_prst);
	if (FUNC1(data->reg_als_prst)) {
		FUNC3(&client->dev, "ALS prst reg field init failed\n");
		return FUNC2(data->reg_als_prst);
	}

	data->reg_ps_prst = FUNC5(&client->dev, regmap,
						    reg_field_ps_prst);
	if (FUNC1(data->reg_ps_prst)) {
		FUNC3(&client->dev, "PS prst reg field init failed.\n");
		return FUNC2(data->reg_ps_prst);
	}

	ret = FUNC17(data->regmap, LTR501_PART_ID, &partid);
	if (ret < 0)
		return ret;

	if (id) {
		name = id->name;
		chip_idx = id->driver_data;
	} else  if (FUNC0(&client->dev)) {
		name = FUNC14(&client->dev, &chip_idx);
	} else {
		return -ENODEV;
	}

	data->chip_info = &ltr501_chip_info_tbl[chip_idx];

	if ((partid >> 4) != data->chip_info->partid)
		return -ENODEV;

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = data->chip_info->info;
	indio_dev->channels = data->chip_info->channels;
	indio_dev->num_channels = data->chip_info->no_channels;
	indio_dev->name = name;
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC13(data);
	if (ret < 0)
		return ret;

	if (client->irq > 0) {
		ret = FUNC7(&client->dev, client->irq,
						NULL, ltr501_interrupt_handler,
						IRQF_TRIGGER_FALLING |
						IRQF_ONESHOT,
						"ltr501_thresh_event",
						indio_dev);
		if (ret) {
			FUNC3(&client->dev, "request irq (%d) failed\n",
				client->irq);
			return ret;
		}
	} else {
		indio_dev->info = data->chip_info->info_no_irq;
	}

	ret = FUNC12(indio_dev, NULL,
					 ltr501_trigger_handler, NULL);
	if (ret)
		goto powerdown_on_error;

	ret = FUNC9(indio_dev);
	if (ret)
		goto error_unreg_buffer;

	return 0;

error_unreg_buffer:
	FUNC11(indio_dev);
powerdown_on_error:
	FUNC15(data);
	return ret;
}