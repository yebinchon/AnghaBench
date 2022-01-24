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
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {char const* name; int /*<<< orphan*/  buffer; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct bmc150_accel_data {int irq; struct regmap* regmap; TYPE_2__* chip_info; int /*<<< orphan*/  mutex; int /*<<< orphan*/  orientation; } ;
struct TYPE_4__ {char const* name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMC150_ACCEL_INT_MODE_LATCH_RESET ; 
 int /*<<< orphan*/  BMC150_ACCEL_IRQ_NAME ; 
 int /*<<< orphan*/  BMC150_ACCEL_REG_INT_RST_LATCH ; 
 scalar_t__ BMC150_ACCEL_TRIGGERS ; 
 int /*<<< orphan*/  BMC150_AUTO_SUSPEND_DELAY_MS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_BUFFER_SOFTWARE ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  bmc150_accel_buffer_ops ; 
 int FUNC0 (struct bmc150_accel_data*) ; 
 int /*<<< orphan*/  bmc150_accel_fifo_attributes ; 
 int /*<<< orphan*/  bmc150_accel_info ; 
 int /*<<< orphan*/  bmc150_accel_info_fifo ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*,struct bmc150_accel_data*) ; 
 int /*<<< orphan*/  bmc150_accel_irq_handler ; 
 int /*<<< orphan*/  bmc150_accel_irq_thread_handler ; 
 int /*<<< orphan*/  bmc150_accel_scan_masks ; 
 int /*<<< orphan*/  bmc150_accel_trigger_handler ; 
 int FUNC2 (struct iio_dev*,struct bmc150_accel_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct bmc150_accel_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct iio_dev*) ; 
 struct iio_dev* FUNC6 (struct device*,int) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct bmc150_accel_data* FUNC10 (struct iio_dev*) ; 
 int FUNC11 (struct device*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct iio_dev*) ; 
 int FUNC13 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int FUNC19 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC20(struct device *dev, struct regmap *regmap, int irq,
			    const char *name, bool block_supported)
{
	struct bmc150_accel_data *data;
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

	ret = FUNC0(data);
	if (ret < 0)
		return ret;

	FUNC14(&data->mutex);

	indio_dev->dev.parent = dev;
	indio_dev->channels = data->chip_info->channels;
	indio_dev->num_channels = data->chip_info->num_channels;
	indio_dev->name = name ? name : data->chip_info->name;
	indio_dev->available_scan_masks = bmc150_accel_scan_masks;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &bmc150_accel_info;

	ret = FUNC13(indio_dev,
					 &iio_pollfunc_store_time,
					 bmc150_accel_trigger_handler,
					 &bmc150_accel_buffer_ops);
	if (ret < 0) {
		FUNC4(dev, "Failed: iio triggered buffer setup\n");
		return ret;
	}

	if (data->irq > 0) {
		ret = FUNC7(
						dev, data->irq,
						bmc150_accel_irq_handler,
						bmc150_accel_irq_thread_handler,
						IRQF_TRIGGER_RISING,
						BMC150_ACCEL_IRQ_NAME,
						indio_dev);
		if (ret)
			goto err_buffer_cleanup;

		/*
		 * Set latched mode interrupt. While certain interrupts are
		 * non-latched regardless of this settings (e.g. new data) we
		 * want to use latch mode when we can to prevent interrupt
		 * flooding.
		 */
		ret = FUNC19(data->regmap, BMC150_ACCEL_REG_INT_RST_LATCH,
				   BMC150_ACCEL_INT_MODE_LATCH_RESET);
		if (ret < 0) {
			FUNC4(dev, "Error writing reg_int_rst_latch\n");
			goto err_buffer_cleanup;
		}

		FUNC1(indio_dev, data);

		ret = FUNC2(indio_dev, data);
		if (ret)
			goto err_buffer_cleanup;

		if (block_supported) {
			indio_dev->modes |= INDIO_BUFFER_SOFTWARE;
			indio_dev->info = &bmc150_accel_info_fifo;
			FUNC8(indio_dev->buffer,
					     bmc150_accel_fifo_attributes);
		}
	}

	ret = FUNC16(dev);
	if (ret)
		goto err_trigger_unregister;

	FUNC15(dev);
	FUNC17(dev, BMC150_AUTO_SUSPEND_DELAY_MS);
	FUNC18(dev);

	ret = FUNC9(indio_dev);
	if (ret < 0) {
		FUNC4(dev, "Unable to register iio device\n");
		goto err_trigger_unregister;
	}

	return 0;

err_trigger_unregister:
	FUNC3(data, BMC150_ACCEL_TRIGGERS - 1);
err_buffer_cleanup:
	FUNC12(indio_dev);

	return ret;
}