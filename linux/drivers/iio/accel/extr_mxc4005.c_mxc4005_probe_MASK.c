#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct mxc4005_data {TYPE_3__* dready_trig; int /*<<< orphan*/  mutex; struct regmap* regmap; int /*<<< orphan*/ * dev; } ;
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {TYPE_3__* trig; int /*<<< orphan*/  id; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_10__ {int /*<<< orphan*/ * ops; TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  MXC4005_DRV_NAME ; 
 int /*<<< orphan*/  MXC4005_IRQ_NAME ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct regmap* FUNC9 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct mxc4005_data* FUNC12 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_trigger_generic_data_rdy_poll ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mxc4005_channels ; 
 int FUNC16 (struct mxc4005_data*) ; 
 int /*<<< orphan*/  mxc4005_info ; 
 int /*<<< orphan*/  mxc4005_regmap_config ; 
 int /*<<< orphan*/  mxc4005_scan_masks ; 
 int /*<<< orphan*/  mxc4005_trigger_handler ; 
 int /*<<< orphan*/  mxc4005_trigger_ops ; 

__attribute__((used)) static int FUNC17(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct mxc4005_data *data;
	struct iio_dev *indio_dev;
	struct regmap *regmap;
	int ret;

	indio_dev = FUNC4(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	regmap = FUNC9(client, &mxc4005_regmap_config);
	if (FUNC1(regmap)) {
		FUNC3(&client->dev, "failed to initialize regmap\n");
		return FUNC2(regmap);
	}

	data = FUNC12(indio_dev);
	FUNC11(client, indio_dev);
	data->dev = &client->dev;
	data->regmap = regmap;

	ret = FUNC16(data);
	if (ret < 0) {
		FUNC3(&client->dev, "failed to initialize chip\n");
		return ret;
	}

	FUNC15(&data->mutex);

	indio_dev->dev.parent = &client->dev;
	indio_dev->channels = mxc4005_channels;
	indio_dev->num_channels = FUNC0(mxc4005_channels);
	indio_dev->available_scan_masks = mxc4005_scan_masks;
	indio_dev->name = MXC4005_DRV_NAME;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &mxc4005_info;

	ret = FUNC8(&client->dev, indio_dev,
					 iio_pollfunc_store_time,
					 mxc4005_trigger_handler,
					 NULL);
	if (ret < 0) {
		FUNC3(&client->dev,
			"failed to setup iio triggered buffer\n");
		return ret;
	}

	if (client->irq > 0) {
		data->dready_trig = FUNC6(&client->dev,
							   "%s-dev%d",
							   indio_dev->name,
							   indio_dev->id);
		if (!data->dready_trig)
			return -ENOMEM;

		ret = FUNC10(&client->dev, client->irq,
						iio_trigger_generic_data_rdy_poll,
						NULL,
						IRQF_TRIGGER_FALLING |
						IRQF_ONESHOT,
						MXC4005_IRQ_NAME,
						data->dready_trig);
		if (ret) {
			FUNC3(&client->dev,
				"failed to init threaded irq\n");
			return ret;
		}

		data->dready_trig->dev.parent = &client->dev;
		data->dready_trig->ops = &mxc4005_trigger_ops;
		FUNC14(data->dready_trig, indio_dev);
		indio_dev->trig = data->dready_trig;
		FUNC13(indio_dev->trig);
		ret = FUNC7(&client->dev,
						data->dready_trig);
		if (ret) {
			FUNC3(&client->dev,
				"failed to register trigger\n");
			return ret;
		}
	}

	return FUNC5(&client->dev, indio_dev);
}