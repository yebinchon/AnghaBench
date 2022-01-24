#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct regmap {int dummy; } ;
struct TYPE_4__ {struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  available_scan_masks; TYPE_1__ dev; int /*<<< orphan*/  modes; } ;
struct hts221_hw {char const* name; int irq; struct device* dev; struct regmap* regmap; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * avg_avl; } ;
struct TYPE_5__ {int /*<<< orphan*/  hz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HTS221_BDU_MASK ; 
 int /*<<< orphan*/  HTS221_DEV_NAME ; 
 int /*<<< orphan*/  HTS221_REG_CNTRL1_ADDR ; 
 size_t HTS221_SENSOR_H ; 
 size_t HTS221_SENSOR_T ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,void*) ; 
 struct iio_dev* FUNC4 (struct device*,int) ; 
 int FUNC5 (struct device*,struct iio_dev*) ; 
 int FUNC6 (struct hts221_hw*) ; 
 int FUNC7 (struct hts221_hw*) ; 
 TYPE_3__* hts221_avg_list ; 
 int /*<<< orphan*/  hts221_channels ; 
 int FUNC8 (struct hts221_hw*) ; 
 int /*<<< orphan*/  hts221_info ; 
 TYPE_2__* hts221_odr_table ; 
 int FUNC9 (struct hts221_hw*) ; 
 int FUNC10 (struct hts221_hw*) ; 
 int /*<<< orphan*/  hts221_scan_masks ; 
 int FUNC11 (struct hts221_hw*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct hts221_hw*,int /*<<< orphan*/ ) ; 
 struct hts221_hw* FUNC13 (struct iio_dev*) ; 
 int FUNC14 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC15(struct device *dev, int irq, const char *name,
		 struct regmap *regmap)
{
	struct iio_dev *iio_dev;
	struct hts221_hw *hw;
	int err;
	u8 data;

	iio_dev = FUNC4(dev, sizeof(*hw));
	if (!iio_dev)
		return -ENOMEM;

	FUNC3(dev, (void *)iio_dev);

	hw = FUNC13(iio_dev);
	hw->name = name;
	hw->dev = dev;
	hw->irq = irq;
	hw->regmap = regmap;

	err = FUNC8(hw);
	if (err < 0)
		return err;

	iio_dev->modes = INDIO_DIRECT_MODE;
	iio_dev->dev.parent = hw->dev;
	iio_dev->available_scan_masks = hts221_scan_masks;
	iio_dev->channels = hts221_channels;
	iio_dev->num_channels = FUNC0(hts221_channels);
	iio_dev->name = HTS221_DEV_NAME;
	iio_dev->info = &hts221_info;

	/* enable Block Data Update */
	err = FUNC14(hw->regmap, HTS221_REG_CNTRL1_ADDR,
				 HTS221_BDU_MASK,
				 FUNC1(HTS221_BDU_MASK, 1));
	if (err < 0)
		return err;

	err = FUNC12(hw, hts221_odr_table[0].hz);
	if (err < 0)
		return err;

	/* configure humidity sensor */
	err = FUNC9(hw);
	if (err < 0) {
		FUNC2(hw->dev, "failed to get rh calibration data\n");
		return err;
	}

	data = hts221_avg_list[HTS221_SENSOR_H].avg_avl[3];
	err = FUNC11(hw, HTS221_SENSOR_H, data);
	if (err < 0) {
		FUNC2(hw->dev, "failed to set rh oversampling ratio\n");
		return err;
	}

	/* configure temperature sensor */
	err = FUNC10(hw);
	if (err < 0) {
		FUNC2(hw->dev,
			"failed to get temperature calibration data\n");
		return err;
	}

	data = hts221_avg_list[HTS221_SENSOR_T].avg_avl[3];
	err = FUNC11(hw, HTS221_SENSOR_T, data);
	if (err < 0) {
		FUNC2(hw->dev,
			"failed to set temperature oversampling ratio\n");
		return err;
	}

	if (hw->irq > 0) {
		err = FUNC6(hw);
		if (err < 0)
			return err;

		err = FUNC7(hw);
		if (err)
			return err;
	}

	return FUNC5(hw->dev, iio_dev);
}