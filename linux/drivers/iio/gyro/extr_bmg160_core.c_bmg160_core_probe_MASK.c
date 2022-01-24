#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct TYPE_6__ {struct device* parent; } ;
struct iio_dev {char const* name; int /*<<< orphan*/  id; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct bmg160_data {int irq; TYPE_3__* motion_trig; TYPE_3__* dready_trig; int /*<<< orphan*/  mutex; int /*<<< orphan*/  orientation; struct regmap* regmap; } ;
struct TYPE_7__ {struct device* parent; } ;
struct TYPE_8__ {int /*<<< orphan*/ * ops; TYPE_2__ dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BMG160_AUTO_SUSPEND_DELAY_MS ; 
 int /*<<< orphan*/  BMG160_IRQ_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  bmg160_accel_scan_masks ; 
 int /*<<< orphan*/  bmg160_buffer_setup_ops ; 
 int /*<<< orphan*/  bmg160_channels ; 
 int FUNC2 (struct bmg160_data*) ; 
 int /*<<< orphan*/  bmg160_data_rdy_trig_poll ; 
 int /*<<< orphan*/  bmg160_event_handler ; 
 int /*<<< orphan*/  bmg160_info ; 
 char* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  bmg160_trigger_handler ; 
 int /*<<< orphan*/  bmg160_trigger_ops ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct iio_dev*) ; 
 struct iio_dev* FUNC6 (struct device*,int) ; 
 void* FUNC7 (struct device*,char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct bmg160_data* FUNC10 (struct iio_dev*) ; 
 int FUNC11 (struct device*,char*,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (struct iio_dev*) ; 
 int FUNC16 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 

int FUNC22(struct device *dev, struct regmap *regmap, int irq,
		      const char *name)
{
	struct bmg160_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC6(dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC10(indio_dev);
	FUNC5(dev, indio_dev);
	data->irq = irq;
	data->regmap = regmap;

	ret = FUNC11(dev, "mount-matrix",
				&data->orientation);
	if (ret)
		return ret;

	ret = FUNC2(data);
	if (ret < 0)
		return ret;

	FUNC17(&data->mutex);

	if (FUNC0(dev))
		name = FUNC3(dev);

	indio_dev->dev.parent = dev;
	indio_dev->channels = bmg160_channels;
	indio_dev->num_channels = FUNC1(bmg160_channels);
	indio_dev->name = name;
	indio_dev->available_scan_masks = bmg160_accel_scan_masks;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &bmg160_info;

	if (data->irq > 0) {
		ret = FUNC8(dev,
						data->irq,
						bmg160_data_rdy_trig_poll,
						bmg160_event_handler,
						IRQF_TRIGGER_RISING,
						BMG160_IRQ_NAME,
						indio_dev);
		if (ret)
			return ret;

		data->dready_trig = FUNC7(dev,
							   "%s-dev%d",
							   indio_dev->name,
							   indio_dev->id);
		if (!data->dready_trig)
			return -ENOMEM;

		data->motion_trig = FUNC7(dev,
							  "%s-any-motion-dev%d",
							  indio_dev->name,
							  indio_dev->id);
		if (!data->motion_trig)
			return -ENOMEM;

		data->dready_trig->dev.parent = dev;
		data->dready_trig->ops = &bmg160_trigger_ops;
		FUNC13(data->dready_trig, indio_dev);
		ret = FUNC12(data->dready_trig);
		if (ret)
			return ret;

		data->motion_trig->dev.parent = dev;
		data->motion_trig->ops = &bmg160_trigger_ops;
		FUNC13(data->motion_trig, indio_dev);
		ret = FUNC12(data->motion_trig);
		if (ret) {
			data->motion_trig = NULL;
			goto err_trigger_unregister;
		}
	}

	ret = FUNC16(indio_dev,
					 iio_pollfunc_store_time,
					 bmg160_trigger_handler,
					 &bmg160_buffer_setup_ops);
	if (ret < 0) {
		FUNC4(dev,
			"iio triggered buffer setup failed\n");
		goto err_trigger_unregister;
	}

	ret = FUNC19(dev);
	if (ret)
		goto err_buffer_cleanup;

	FUNC18(dev);
	FUNC20(dev,
					 BMG160_AUTO_SUSPEND_DELAY_MS);
	FUNC21(dev);

	ret = FUNC9(indio_dev);
	if (ret < 0) {
		FUNC4(dev, "unable to register iio device\n");
		goto err_buffer_cleanup;
	}

	return 0;

err_buffer_cleanup:
	FUNC15(indio_dev);
err_trigger_unregister:
	if (data->dready_trig)
		FUNC14(data->dready_trig);
	if (data->motion_trig)
		FUNC14(data->motion_trig);

	return ret;
}