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
struct iio_dev {char const* name; int num_channels; int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct hmc5843_data {TYPE_2__* variant; int /*<<< orphan*/  orientation; int /*<<< orphan*/  lock; struct regmap* regmap; struct device* dev; } ;
struct device {int dummy; } ;
typedef  enum hmc5843_ids { ____Placeholder_hmc5843_ids } hmc5843_ids ;
struct TYPE_4__ {int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HMC5843_MODE_SLEEP ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct iio_dev*) ; 
 struct iio_dev* FUNC1 (struct device*,int) ; 
 TYPE_2__* hmc5843_chip_info_tbl ; 
 int /*<<< orphan*/  hmc5843_info ; 
 int FUNC2 (struct hmc5843_data*) ; 
 int /*<<< orphan*/  hmc5843_scan_masks ; 
 int /*<<< orphan*/  FUNC3 (struct hmc5843_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hmc5843_trigger_handler ; 
 int FUNC4 (struct iio_dev*) ; 
 struct hmc5843_data* FUNC5 (struct iio_dev*) ; 
 int FUNC6 (struct device*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*) ; 
 int FUNC8 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct device *dev, struct regmap *regmap,
			 enum hmc5843_ids id, const char *name)
{
	struct hmc5843_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC1(dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	FUNC0(dev, indio_dev);

	/* default settings at probe */
	data = FUNC5(indio_dev);
	data->dev = dev;
	data->regmap = regmap;
	data->variant = &hmc5843_chip_info_tbl[id];
	FUNC9(&data->lock);

	ret = FUNC6(dev, "mount-matrix",
				&data->orientation);
	if (ret)
		return ret;

	indio_dev->dev.parent = dev;
	indio_dev->name = name;
	indio_dev->info = &hmc5843_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = data->variant->channels;
	indio_dev->num_channels = 4;
	indio_dev->available_scan_masks = hmc5843_scan_masks;

	ret = FUNC2(data);
	if (ret < 0)
		return ret;

	ret = FUNC8(indio_dev, NULL,
					 hmc5843_trigger_handler, NULL);
	if (ret < 0)
		goto buffer_setup_err;

	ret = FUNC4(indio_dev);
	if (ret < 0)
		goto buffer_cleanup;

	return 0;

buffer_cleanup:
	FUNC7(indio_dev);
buffer_setup_err:
	FUNC3(FUNC5(indio_dev), HMC5843_MODE_SLEEP);
	return ret;
}