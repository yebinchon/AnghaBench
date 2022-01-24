#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct regmap_field {int dummy; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {char const* name; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; } ;
struct fxas21002c_data {int irq; int /*<<< orphan*/  lock; struct regmap_field** regmap_fields; struct regmap* regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int F_MAX_FIELDS ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (struct regmap_field*) ; 
 int FUNC2 (struct regmap_field*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct iio_dev*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,struct fxas21002c_data*) ; 
 struct iio_dev* FUNC5 (struct device*,int) ; 
 int FUNC6 (struct device*,struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct regmap_field* FUNC7 (struct device*,struct regmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fxas21002c_channels ; 
 int FUNC8 (struct fxas21002c_data*) ; 
 int /*<<< orphan*/  fxas21002c_info ; 
 int /*<<< orphan*/  fxas21002c_power_disable_action ; 
 int FUNC9 (struct fxas21002c_data*) ; 
 int /*<<< orphan*/ * fxas21002c_reg_fields ; 
 int FUNC10 (struct fxas21002c_data*) ; 
 int /*<<< orphan*/  fxas21002c_trigger_handler ; 
 int FUNC11 (struct fxas21002c_data*) ; 
 int FUNC12 (struct iio_dev*) ; 
 struct fxas21002c_data* FUNC13 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 

int FUNC22(struct device *dev, struct regmap *regmap, int irq,
			  const char *name)
{
	struct fxas21002c_data *data;
	struct iio_dev *indio_dev;
	struct regmap_field *f;
	int i;
	int ret;

	indio_dev = FUNC5(dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC13(indio_dev);
	FUNC3(dev, indio_dev);
	data->irq = irq;
	data->regmap = regmap;

	for (i = 0; i < F_MAX_FIELDS; i++) {
		f = FUNC7(dev, data->regmap,
					    fxas21002c_reg_fields[i]);
		if (FUNC1(f))
			return FUNC2(f);

		data->regmap_fields[i] = f;
	}

	FUNC14(&data->lock);

	ret = FUNC10(data);
	if (ret < 0)
		return ret;

	ret = FUNC9(data);
	if (ret < 0)
		return ret;

	ret = FUNC4(dev, fxas21002c_power_disable_action,
				       data);
	if (ret < 0)
		return ret;

	ret = FUNC8(data);
	if (ret < 0)
		return ret;

	indio_dev->dev.parent = dev;
	indio_dev->channels = fxas21002c_channels;
	indio_dev->num_channels = FUNC0(fxas21002c_channels);
	indio_dev->name = name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &fxas21002c_info;

	ret = FUNC11(data);
	if (ret < 0)
		return ret;

	ret = FUNC6(dev, indio_dev, NULL,
					      fxas21002c_trigger_handler, NULL);
	if (ret < 0)
		return ret;

	ret = FUNC18(dev);
	if (ret)
		return ret;

	FUNC16(dev);
	FUNC19(dev, 2000);
	FUNC21(dev);

	ret = FUNC12(indio_dev);
	if (ret < 0)
		goto pm_disable;

	return 0;

pm_disable:
	FUNC15(dev);
	FUNC20(dev);
	FUNC17(dev);

	return ret;
}