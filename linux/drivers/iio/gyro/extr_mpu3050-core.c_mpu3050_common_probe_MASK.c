#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct regmap {int dummy; } ;
struct mpu3050 {int divisor; TYPE_2__* regs; int /*<<< orphan*/  orientation; int /*<<< orphan*/  lpf; int /*<<< orphan*/  fullscale; int /*<<< orphan*/  lock; struct regmap* map; struct device* dev; } ;
struct TYPE_5__ {struct device* parent; } ;
struct iio_dev {char const* name; int /*<<< orphan*/  modes; int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; TYPE_2__* channels; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FS_2000_DPS ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 unsigned int MPU3050_CHIP_ID ; 
 unsigned int MPU3050_CHIP_ID_MASK ; 
 int /*<<< orphan*/  MPU3050_CHIP_ID_REG ; 
 int /*<<< orphan*/  MPU3050_DLPF_CFG_188HZ ; 
 int /*<<< orphan*/  MPU3050_PRODUCT_ID_REG ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct iio_dev*) ; 
 struct iio_dev* FUNC4 (struct device*,int) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct mpu3050* FUNC7 (struct iio_dev*) ; 
 int FUNC8 (struct device*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct iio_dev*) ; 
 int FUNC10 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mpu3050_buffer_setup_ops ; 
 TYPE_2__* mpu3050_channels ; 
 int FUNC11 (struct mpu3050*) ; 
 int /*<<< orphan*/  mpu3050_info ; 
 int /*<<< orphan*/  FUNC12 (struct mpu3050*) ; 
 int FUNC13 (struct mpu3050*) ; 
 int /*<<< orphan*/  mpu3050_reg_vdd ; 
 int /*<<< orphan*/  mpu3050_reg_vlogic ; 
 int /*<<< orphan*/  mpu3050_scan_masks ; 
 int /*<<< orphan*/  mpu3050_trigger_handler ; 
 int FUNC14 (struct iio_dev*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int FUNC22 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 

int FUNC23(struct device *dev,
			 struct regmap *map,
			 int irq,
			 const char *name)
{
	struct iio_dev *indio_dev;
	struct mpu3050 *mpu3050;
	unsigned int val;
	int ret;

	indio_dev = FUNC4(dev, sizeof(*mpu3050));
	if (!indio_dev)
		return -ENOMEM;
	mpu3050 = FUNC7(indio_dev);

	mpu3050->dev = dev;
	mpu3050->map = map;
	FUNC15(&mpu3050->lock);
	/* Default fullscale: 2000 degrees per second */
	mpu3050->fullscale = FS_2000_DPS;
	/* 1 kHz, divide by 100, default frequency = 10 Hz */
	mpu3050->lpf = MPU3050_DLPF_CFG_188HZ;
	mpu3050->divisor = 99;

	/* Read the mounting matrix, if present */
	ret = FUNC8(dev, "mount-matrix", &mpu3050->orientation);
	if (ret)
		return ret;

	/* Fetch and turn on regulators */
	mpu3050->regs[0].supply = mpu3050_reg_vdd;
	mpu3050->regs[1].supply = mpu3050_reg_vlogic;
	ret = FUNC5(dev, FUNC0(mpu3050->regs),
				      mpu3050->regs);
	if (ret) {
		FUNC1(dev, "Cannot get regulators\n");
		return ret;
	}

	ret = FUNC13(mpu3050);
	if (ret)
		return ret;

	ret = FUNC22(map, MPU3050_CHIP_ID_REG, &val);
	if (ret) {
		FUNC1(dev, "could not read device ID\n");
		ret = -ENODEV;

		goto err_power_down;
	}

	if ((val & MPU3050_CHIP_ID_MASK) != MPU3050_CHIP_ID) {
		FUNC1(dev, "unsupported chip id %02x\n",
				(u8)(val & MPU3050_CHIP_ID_MASK));
		ret = -ENODEV;
		goto err_power_down;
	}

	ret = FUNC22(map, MPU3050_PRODUCT_ID_REG, &val);
	if (ret) {
		FUNC1(dev, "could not read device ID\n");
		ret = -ENODEV;

		goto err_power_down;
	}
	FUNC2(dev, "found MPU-3050 part no: %d, version: %d\n",
		 ((val >> 4) & 0xf), (val & 0xf));

	ret = FUNC11(mpu3050);
	if (ret)
		goto err_power_down;

	indio_dev->dev.parent = dev;
	indio_dev->channels = mpu3050_channels;
	indio_dev->num_channels = FUNC0(mpu3050_channels);
	indio_dev->info = &mpu3050_info;
	indio_dev->available_scan_masks = mpu3050_scan_masks;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->name = name;

	ret = FUNC10(indio_dev, iio_pollfunc_store_time,
					 mpu3050_trigger_handler,
					 &mpu3050_buffer_setup_ops);
	if (ret) {
		FUNC1(dev, "triggered buffer setup failed\n");
		goto err_power_down;
	}

	ret = FUNC6(indio_dev);
	if (ret) {
		FUNC1(dev, "device register failed\n");
		goto err_cleanup_buffer;
	}

	FUNC3(dev, indio_dev);

	/* Check if we have an assigned IRQ to use as trigger */
	if (irq) {
		ret = FUNC14(indio_dev, irq);
		if (ret)
			FUNC1(dev, "failed to register trigger\n");
	}

	/* Enable runtime PM */
	FUNC17(dev);
	FUNC19(dev);
	FUNC16(dev);
	/*
	 * Set autosuspend to two orders of magnitude larger than the
	 * start-up time. 100ms start-up time means 10000ms autosuspend,
	 * i.e. 10 seconds.
	 */
	FUNC20(dev, 10000);
	FUNC21(dev);
	FUNC18(dev);

	return 0;

err_cleanup_buffer:
	FUNC9(indio_dev);
err_power_down:
	FUNC12(mpu3050);

	return ret;
}