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
struct iio_dev {char const* name; int /*<<< orphan*/  channels; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct ad5380_state {int vref; int /*<<< orphan*/  vref_reg; struct regmap* regmap; TYPE_2__* chip_info; } ;
typedef  enum ad5380_type { ____Placeholder_ad5380_type } ad5380_type ;
struct TYPE_4__ {int int_vref; int /*<<< orphan*/  num_channels; } ;

/* Variables and functions */
 unsigned int AD5380_CTRL_INT_VREF_2V5 ; 
 unsigned int AD5380_CTRL_INT_VREF_EN ; 
 int /*<<< orphan*/  AD5380_REG_SF_CTRL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iio_dev*) ; 
 TYPE_2__* ad5380_chip_info_tbl ; 
 int /*<<< orphan*/  ad5380_info ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct iio_dev*) ; 
 struct iio_dev* FUNC4 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int FUNC6 (struct iio_dev*) ; 
 struct ad5380_state* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct regmap*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct device *dev, struct regmap *regmap,
			enum ad5380_type type, const char *name)
{
	struct iio_dev *indio_dev;
	struct ad5380_state *st;
	unsigned int ctrl = 0;
	int ret;

	indio_dev = FUNC4(dev, sizeof(*st));
	if (indio_dev == NULL) {
		FUNC2(dev, "Failed to allocate iio device\n");
		return -ENOMEM;
	}

	st = FUNC7(indio_dev);
	FUNC3(dev, indio_dev);

	st->chip_info = &ad5380_chip_info_tbl[type];
	st->regmap = regmap;

	indio_dev->dev.parent = dev;
	indio_dev->name = name;
	indio_dev->info = &ad5380_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->num_channels = st->chip_info->num_channels;

	ret = FUNC1(indio_dev);
	if (ret) {
		FUNC2(dev, "Failed to allocate channel spec: %d\n", ret);
		return ret;
	}

	if (st->chip_info->int_vref == 2500)
		ctrl |= AD5380_CTRL_INT_VREF_2V5;

	st->vref_reg = FUNC5(dev, "vref");
	if (!FUNC0(st->vref_reg)) {
		ret = FUNC11(st->vref_reg);
		if (ret) {
			FUNC2(dev, "Failed to enable vref regulators: %d\n",
				ret);
			goto error_free_reg;
		}

		ret = FUNC12(st->vref_reg);
		if (ret < 0)
			goto error_disable_reg;

		st->vref = ret / 1000;
	} else {
		st->vref = st->chip_info->int_vref;
		ctrl |= AD5380_CTRL_INT_VREF_EN;
	}

	ret = FUNC9(st->regmap, AD5380_REG_SF_CTRL, ctrl);
	if (ret) {
		FUNC2(dev, "Failed to write to device: %d\n", ret);
		goto error_disable_reg;
	}

	ret = FUNC6(indio_dev);
	if (ret) {
		FUNC2(dev, "Failed to register iio device: %d\n", ret);
		goto error_disable_reg;
	}

	return 0;

error_disable_reg:
	if (!FUNC0(st->vref_reg))
		FUNC10(st->vref_reg);
error_free_reg:
	FUNC8(indio_dev->channels);

	return ret;
}