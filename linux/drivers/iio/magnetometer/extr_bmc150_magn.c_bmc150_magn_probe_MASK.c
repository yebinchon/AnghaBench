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
struct regmap {int dummy; } ;
struct TYPE_9__ {struct device* parent; } ;
struct iio_dev {char const* name; int /*<<< orphan*/  id; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct bmc150_magn_data {int irq; TYPE_3__* dready_trig; int /*<<< orphan*/  mutex; int /*<<< orphan*/  orientation; struct device* dev; struct regmap* regmap; } ;
struct TYPE_10__ {struct device* parent; } ;
struct TYPE_11__ {int /*<<< orphan*/ * ops; TYPE_2__ dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BMC150_MAGN_AUTO_SUSPEND_DELAY_MS ; 
 int /*<<< orphan*/  BMC150_MAGN_IRQ_NAME ; 
 int /*<<< orphan*/  BMC150_MAGN_POWER_MODE_SUSPEND ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  bmc150_magn_buffer_setup_ops ; 
 int /*<<< orphan*/  bmc150_magn_channels ; 
 int /*<<< orphan*/  bmc150_magn_info ; 
 int FUNC2 (struct bmc150_magn_data*) ; 
 char* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  bmc150_magn_scan_masks ; 
 int /*<<< orphan*/  FUNC4 (struct bmc150_magn_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  bmc150_magn_trigger_handler ; 
 int /*<<< orphan*/  bmc150_magn_trigger_ops ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct iio_dev*) ; 
 struct iio_dev* FUNC8 (struct device*,int) ; 
 TYPE_3__* FUNC9 (struct device*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,TYPE_3__*) ; 
 int FUNC11 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct bmc150_magn_data* FUNC12 (struct iio_dev*) ; 
 int FUNC13 (struct device*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iio_trigger_generic_data_rdy_poll ; 
 int FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (struct iio_dev*) ; 
 int FUNC18 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int FUNC24 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_3__*) ; 

int FUNC25(struct device *dev, struct regmap *regmap,
		      int irq, const char *name)
{
	struct bmc150_magn_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC8(dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC12(indio_dev);
	FUNC7(dev, indio_dev);
	data->regmap = regmap;
	data->irq = irq;
	data->dev = dev;

	ret = FUNC13(dev, "mount-matrix",
				&data->orientation);
	if (ret)
		return ret;

	if (!name && FUNC0(dev))
		name = FUNC3(dev);

	FUNC19(&data->mutex);

	ret = FUNC2(data);
	if (ret < 0)
		return ret;

	indio_dev->dev.parent = dev;
	indio_dev->channels = bmc150_magn_channels;
	indio_dev->num_channels = FUNC1(bmc150_magn_channels);
	indio_dev->available_scan_masks = bmc150_magn_scan_masks;
	indio_dev->name = name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &bmc150_magn_info;

	if (irq > 0) {
		data->dready_trig = FUNC9(dev,
							   "%s-dev%d",
							   indio_dev->name,
							   indio_dev->id);
		if (!data->dready_trig) {
			ret = -ENOMEM;
			FUNC6(dev, "iio trigger alloc failed\n");
			goto err_poweroff;
		}

		data->dready_trig->dev.parent = dev;
		data->dready_trig->ops = &bmc150_magn_trigger_ops;
		FUNC15(data->dready_trig, indio_dev);
		ret = FUNC14(data->dready_trig);
		if (ret) {
			FUNC6(dev, "iio trigger register failed\n");
			goto err_poweroff;
		}

		ret = FUNC24(irq,
					   iio_trigger_generic_data_rdy_poll,
					   NULL,
					   IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					   BMC150_MAGN_IRQ_NAME,
					   data->dready_trig);
		if (ret < 0) {
			FUNC6(dev, "request irq %d failed\n", irq);
			goto err_trigger_unregister;
		}
	}

	ret = FUNC18(indio_dev,
					 iio_pollfunc_store_time,
					 bmc150_magn_trigger_handler,
					 &bmc150_magn_buffer_setup_ops);
	if (ret < 0) {
		FUNC6(dev, "iio triggered buffer setup failed\n");
		goto err_free_irq;
	}

	ret = FUNC21(dev);
	if (ret)
		goto err_buffer_cleanup;

	FUNC20(dev);
	FUNC22(dev,
					 BMC150_MAGN_AUTO_SUSPEND_DELAY_MS);
	FUNC23(dev);

	ret = FUNC11(indio_dev);
	if (ret < 0) {
		FUNC6(dev, "unable to register iio device\n");
		goto err_buffer_cleanup;
	}

	FUNC5(dev, "Registered device %s\n", name);
	return 0;

err_buffer_cleanup:
	FUNC17(indio_dev);
err_free_irq:
	if (irq > 0)
		FUNC10(irq, data->dready_trig);
err_trigger_unregister:
	if (data->dready_trig)
		FUNC16(data->dready_trig);
err_poweroff:
	FUNC4(data, BMC150_MAGN_POWER_MODE_SUSPEND, true);
	return ret;
}