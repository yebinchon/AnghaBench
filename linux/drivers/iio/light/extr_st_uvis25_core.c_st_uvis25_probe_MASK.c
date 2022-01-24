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
struct st_uvis25_hw {int irq; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; int /*<<< orphan*/  modes; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  ST_UVIS25_DEV_NAME ; 
 int /*<<< orphan*/  FUNC1 (struct device*,void*) ; 
 struct iio_dev* FUNC2 (struct device*,int) ; 
 int FUNC3 (struct device*,struct iio_dev*) ; 
 struct st_uvis25_hw* FUNC4 (struct iio_dev*) ; 
 int FUNC5 (struct iio_dev*) ; 
 int FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  st_uvis25_channels ; 
 int FUNC7 (struct st_uvis25_hw*) ; 
 int /*<<< orphan*/  st_uvis25_info ; 
 int FUNC8 (struct st_uvis25_hw*) ; 

int FUNC9(struct device *dev, int irq, struct regmap *regmap)
{
	struct st_uvis25_hw *hw;
	struct iio_dev *iio_dev;
	int err;

	iio_dev = FUNC2(dev, sizeof(*hw));
	if (!iio_dev)
		return -ENOMEM;

	FUNC1(dev, (void *)iio_dev);

	hw = FUNC4(iio_dev);
	hw->irq = irq;
	hw->regmap = regmap;

	err = FUNC7(hw);
	if (err < 0)
		return err;

	iio_dev->modes = INDIO_DIRECT_MODE;
	iio_dev->dev.parent = dev;
	iio_dev->channels = st_uvis25_channels;
	iio_dev->num_channels = FUNC0(st_uvis25_channels);
	iio_dev->name = ST_UVIS25_DEV_NAME;
	iio_dev->info = &st_uvis25_info;

	err = FUNC8(hw);
	if (err < 0)
		return err;

	if (hw->irq > 0) {
		err = FUNC5(iio_dev);
		if (err < 0)
			return err;

		err = FUNC6(iio_dev);
		if (err)
			return err;
	}

	return FUNC3(dev, iio_dev);
}