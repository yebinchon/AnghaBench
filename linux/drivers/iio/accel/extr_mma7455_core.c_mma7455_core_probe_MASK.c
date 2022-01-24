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
struct regmap {int dummy; } ;
struct mma7455_data {struct regmap* regmap; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {char const* name; int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; TYPE_1__ dev; int /*<<< orphan*/ * info; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  MMA7455_MCTL_MODE_MEASURE ; 
 int /*<<< orphan*/  MMA7455_REG_MCTL ; 
 int /*<<< orphan*/  MMA7455_REG_WHOAMI ; 
 unsigned int MMA7455_WHOAMI_ID ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct iio_dev*) ; 
 struct iio_dev* FUNC3 (struct device*,int) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct mma7455_data* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mma7455_channels ; 
 int /*<<< orphan*/  mma7455_info ; 
 int /*<<< orphan*/  mma7455_scan_masks ; 
 int /*<<< orphan*/  mma7455_trigger_handler ; 
 int FUNC8 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct device *dev, struct regmap *regmap,
		       const char *name)
{
	struct mma7455_data *mma7455;
	struct iio_dev *indio_dev;
	unsigned int reg;
	int ret;

	ret = FUNC8(regmap, MMA7455_REG_WHOAMI, &reg);
	if (ret) {
		FUNC1(dev, "unable to read reg\n");
		return ret;
	}

	if (reg != MMA7455_WHOAMI_ID) {
		FUNC1(dev, "device id mismatch\n");
		return -ENODEV;
	}

	indio_dev = FUNC3(dev, sizeof(*mma7455));
	if (!indio_dev)
		return -ENOMEM;

	FUNC2(dev, indio_dev);
	mma7455 = FUNC5(indio_dev);
	mma7455->regmap = regmap;

	indio_dev->info = &mma7455_info;
	indio_dev->name = name;
	indio_dev->dev.parent = dev;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = mma7455_channels;
	indio_dev->num_channels = FUNC0(mma7455_channels);
	indio_dev->available_scan_masks = mma7455_scan_masks;

	FUNC9(mma7455->regmap, MMA7455_REG_MCTL,
		     MMA7455_MCTL_MODE_MEASURE);

	ret = FUNC7(indio_dev, NULL,
					 mma7455_trigger_handler, NULL);
	if (ret) {
		FUNC1(dev, "unable to setup triggered buffer\n");
		return ret;
	}

	ret = FUNC4(indio_dev);
	if (ret) {
		FUNC1(dev, "unable to register device\n");
		FUNC6(indio_dev);
		return ret;
	}

	return 0;
}