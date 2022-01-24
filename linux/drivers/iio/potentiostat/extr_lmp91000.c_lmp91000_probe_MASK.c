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
struct lmp91000_data {TYPE_3__* trig; int /*<<< orphan*/  cb_buffer; int /*<<< orphan*/  adc_chan; int /*<<< orphan*/  completion; struct device* dev; int /*<<< orphan*/  regmap; } ;
struct TYPE_7__ {struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; int /*<<< orphan*/  modes; TYPE_1__ dev; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_8__ {struct device* parent; } ;
struct TYPE_9__ {TYPE_2__ dev; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LMP91000_DRV_NAME ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct iio_dev* FUNC4 (struct device*,int) ; 
 TYPE_3__* FUNC5 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct iio_dev*) ; 
 struct lmp91000_data* FUNC13 (struct iio_dev*) ; 
 int FUNC14 (TYPE_3__*) ; 
 int FUNC15 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (struct iio_dev*) ; 
 int FUNC18 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lmp91000_buffer_cb ; 
 int /*<<< orphan*/  lmp91000_buffer_handler ; 
 int /*<<< orphan*/  lmp91000_buffer_setup_ops ; 
 int /*<<< orphan*/  lmp91000_channels ; 
 int /*<<< orphan*/  lmp91000_info ; 
 int FUNC20 (struct lmp91000_data*) ; 
 int /*<<< orphan*/  lmp91000_regmap_config ; 
 int /*<<< orphan*/  lmp91000_trigger_ops ; 

__attribute__((used)) static int FUNC21(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct lmp91000_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC4(dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	indio_dev->info = &lmp91000_info;
	indio_dev->channels = lmp91000_channels;
	indio_dev->num_channels = FUNC0(lmp91000_channels);
	indio_dev->name = LMP91000_DRV_NAME;
	indio_dev->dev.parent = &client->dev;
	indio_dev->modes = INDIO_DIRECT_MODE;
	FUNC7(client, indio_dev);

	data = FUNC13(indio_dev);
	data->dev = dev;
	data->regmap = FUNC6(client, &lmp91000_regmap_config);
	if (FUNC1(data->regmap)) {
		FUNC3(dev, "regmap initialization failed.\n");
		return FUNC2(data->regmap);
	}

	data->trig = FUNC5(data->dev, "%s-mux%d",
					    indio_dev->name, indio_dev->id);
	if (!data->trig) {
		FUNC3(dev, "cannot allocate iio trigger.\n");
		return -ENOMEM;
	}

	data->trig->ops = &lmp91000_trigger_ops;
	data->trig->dev.parent = dev;
	FUNC19(&data->completion);

	ret = FUNC20(data);
	if (ret)
		return ret;

	ret = FUNC15(FUNC9(data->cb_buffer),
					data->trig);
	if (ret) {
		FUNC3(dev, "cannot set immutable trigger.\n");
		return ret;
	}

	ret = FUNC14(data->trig);
	if (ret) {
		FUNC3(dev, "cannot register iio trigger.\n");
		return ret;
	}

	ret = FUNC18(indio_dev, NULL,
					 &lmp91000_buffer_handler,
					 &lmp91000_buffer_setup_ops);
	if (ret)
		goto error_unreg_trigger;

	data->cb_buffer = FUNC10(dev, &lmp91000_buffer_cb,
						 indio_dev);

	if (FUNC1(data->cb_buffer)) {
		if (FUNC2(data->cb_buffer) == -ENODEV)
			ret = -EPROBE_DEFER;
		else
			ret = FUNC2(data->cb_buffer);

		goto error_unreg_buffer;
	}

	data->adc_chan = FUNC8(data->cb_buffer);

	ret = FUNC12(indio_dev);
	if (ret)
		goto error_unreg_cb_buffer;

	return 0;

error_unreg_cb_buffer:
	FUNC11(data->cb_buffer);

error_unreg_buffer:
	FUNC17(indio_dev);

error_unreg_trigger:
	FUNC16(data->trig);

	return ret;
}