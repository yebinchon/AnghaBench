#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  modes; int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; TYPE_2__* channels; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int /*<<< orphan*/  dev; } ;
struct ak8974 {int drdy_active_low; int drdy_irq; TYPE_2__* regs; int /*<<< orphan*/  name; int /*<<< orphan*/  map; int /*<<< orphan*/  orientation; int /*<<< orphan*/  lock; struct i2c_client* i2c; } ;
struct TYPE_8__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK8974_AUTOSUSPEND_DELAY ; 
 int /*<<< orphan*/  AK8974_PWR_OFF ; 
 int /*<<< orphan*/  AK8974_PWR_ON ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 unsigned long IRQF_ONESHOT ; 
 unsigned long IRQF_SHARED ; 
 unsigned long IRQF_TRIGGER_FALLING ; 
 unsigned long IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* ak8974_channels ; 
 int FUNC3 (struct ak8974*) ; 
 int /*<<< orphan*/  ak8974_drdy_irq ; 
 int /*<<< orphan*/  ak8974_drdy_irq_thread ; 
 int /*<<< orphan*/  ak8974_handle_trigger ; 
 int /*<<< orphan*/  ak8974_info ; 
 int /*<<< orphan*/  ak8974_reg_avdd ; 
 int /*<<< orphan*/  ak8974_reg_dvdd ; 
 int /*<<< orphan*/  ak8974_regmap_config ; 
 int FUNC4 (struct ak8974*) ; 
 int /*<<< orphan*/  ak8974_scan_masks ; 
 int FUNC5 (struct ak8974*) ; 
 int FUNC6 (struct ak8974*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct ak8974*) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC14 (struct iio_dev*) ; 
 struct ak8974* FUNC15 (struct iio_dev*) ; 
 int FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct iio_dev*) ; 
 int FUNC18 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 unsigned long FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC31 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC32(struct i2c_client *i2c,
			const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct ak8974 *ak8974;
	unsigned long irq_trig;
	int irq = i2c->irq;
	int ret;

	/* Register with IIO */
	indio_dev = FUNC9(&i2c->dev, sizeof(*ak8974));
	if (indio_dev == NULL)
		return -ENOMEM;

	ak8974 = FUNC15(indio_dev);
	FUNC13(i2c, indio_dev);
	ak8974->i2c = i2c;
	FUNC21(&ak8974->lock);

	ret = FUNC16(&i2c->dev, "mount-matrix",
				    &ak8974->orientation);
	if (ret)
		return ret;

	ak8974->regs[0].supply = ak8974_reg_avdd;
	ak8974->regs[1].supply = ak8974_reg_dvdd;

	ret = FUNC11(&i2c->dev,
				      FUNC0(ak8974->regs),
				      ak8974->regs);
	if (ret < 0) {
		FUNC7(&i2c->dev, "cannot get regulators\n");
		return ret;
	}

	ret = FUNC31(FUNC0(ak8974->regs), ak8974->regs);
	if (ret < 0) {
		FUNC7(&i2c->dev, "cannot enable regulators\n");
		return ret;
	}

	/* Take runtime PM online */
	FUNC24(&i2c->dev);
	FUNC27(&i2c->dev);
	FUNC23(&i2c->dev);

	ak8974->map = FUNC10(i2c, &ak8974_regmap_config);
	if (FUNC1(ak8974->map)) {
		FUNC7(&i2c->dev, "failed to allocate register map\n");
		return FUNC2(ak8974->map);
	}

	ret = FUNC6(ak8974, AK8974_PWR_ON);
	if (ret) {
		FUNC7(&i2c->dev, "could not power on\n");
		goto power_off;
	}

	ret = FUNC3(ak8974);
	if (ret) {
		FUNC7(&i2c->dev, "neither AK8974 nor AMI30x found\n");
		goto power_off;
	}

	ret = FUNC5(ak8974);
	if (ret)
		FUNC7(&i2c->dev, "selftest failed (continuing anyway)\n");

	ret = FUNC4(ak8974);
	if (ret) {
		FUNC7(&i2c->dev, "AK8974 reset failed\n");
		goto power_off;
	}

	FUNC28(&i2c->dev,
					 AK8974_AUTOSUSPEND_DELAY);
	FUNC29(&i2c->dev);
	FUNC25(&i2c->dev);

	indio_dev->dev.parent = &i2c->dev;
	indio_dev->channels = ak8974_channels;
	indio_dev->num_channels = FUNC0(ak8974_channels);
	indio_dev->info = &ak8974_info;
	indio_dev->available_scan_masks = ak8974_scan_masks;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->name = ak8974->name;

	ret = FUNC18(indio_dev, NULL,
					 ak8974_handle_trigger,
					 NULL);
	if (ret) {
		FUNC7(&i2c->dev, "triggered buffer setup failed\n");
		goto disable_pm;
	}

	/* If we have a valid DRDY IRQ, make use of it */
	if (irq > 0) {
		irq_trig = FUNC20(FUNC19(irq));
		if (irq_trig == IRQF_TRIGGER_RISING) {
			FUNC8(&i2c->dev, "enable rising edge DRDY IRQ\n");
		} else if (irq_trig == IRQF_TRIGGER_FALLING) {
			ak8974->drdy_active_low = true;
			FUNC8(&i2c->dev, "enable falling edge DRDY IRQ\n");
		} else {
			irq_trig = IRQF_TRIGGER_RISING;
		}
		irq_trig |= IRQF_ONESHOT;
		irq_trig |= IRQF_SHARED;

		ret = FUNC12(&i2c->dev,
						irq,
						ak8974_drdy_irq,
						ak8974_drdy_irq_thread,
						irq_trig,
						ak8974->name,
						ak8974);
		if (ret) {
			FUNC7(&i2c->dev, "unable to request DRDY IRQ "
				"- proceeding without IRQ\n");
			goto no_irq;
		}
		ak8974->drdy_irq = true;
	}

no_irq:
	ret = FUNC14(indio_dev);
	if (ret) {
		FUNC7(&i2c->dev, "device register failed\n");
		goto cleanup_buffer;
	}

	return 0;

cleanup_buffer:
	FUNC17(indio_dev);
disable_pm:
	FUNC26(&i2c->dev);
	FUNC22(&i2c->dev);
	FUNC6(ak8974, AK8974_PWR_OFF);
power_off:
	FUNC30(FUNC0(ak8974->regs), ak8974->regs);

	return ret;
}