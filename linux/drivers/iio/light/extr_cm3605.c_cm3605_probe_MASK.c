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
typedef  int u32 ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {char* name; int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct cm3605 {int als_max; int /*<<< orphan*/  vdd; int /*<<< orphan*/  aset; int /*<<< orphan*/  led; int /*<<< orphan*/  aout; int /*<<< orphan*/  dir; struct device* dev; } ;
typedef  enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  IIO_EV_DIR_FALLING ; 
 int IIO_VOLTAGE ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LED_FULL ; 
 int /*<<< orphan*/  LED_OFF ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cm3605_channels ; 
 int /*<<< orphan*/  cm3605_info ; 
 int /*<<< orphan*/  cm3605_prox_irq ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 struct iio_dev* FUNC7 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct iio_dev*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int*) ; 
 struct cm3605* FUNC13 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct cm3605 *cm3605;
	struct iio_dev *indio_dev;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	enum iio_chan_type ch_type;
	u32 rset;
	int ret;

	indio_dev = FUNC7(dev, sizeof(*cm3605));
	if (!indio_dev)
		return -ENOMEM;
	FUNC19(pdev, indio_dev);

	cm3605 = FUNC13(indio_dev);
	cm3605->dev = dev;
	cm3605->dir = IIO_EV_DIR_FALLING;

	ret = FUNC17(np, "capella,aset-resistance-ohms", &rset);
	if (ret) {
		FUNC4(dev, "no RSET specified, assuming 100K\n");
		rset = 100000;
	}
	switch (rset) {
	case 50000:
		cm3605->als_max = 650;
		break;
	case 100000:
		cm3605->als_max = 300;
		break;
	case 300000:
		cm3605->als_max = 100;
		break;
	case 600000:
		cm3605->als_max = 50;
		break;
	default:
		FUNC4(dev, "non-standard resistance\n");
		return -EINVAL;
	}

	cm3605->aout = FUNC6(dev, "aout");
	if (FUNC1(cm3605->aout)) {
		if (FUNC2(cm3605->aout) == -ENODEV) {
			FUNC3(dev, "no ADC, deferring...\n");
			return -EPROBE_DEFER;
		}
		FUNC3(dev, "failed to get AOUT ADC channel\n");
		return FUNC2(cm3605->aout);
	}
	ret = FUNC12(cm3605->aout, &ch_type);
	if (ret < 0)
		return ret;
	if (ch_type != IIO_VOLTAGE) {
		FUNC3(dev, "wrong type of IIO channel specified for AOUT\n");
		return -EINVAL;
	}

	cm3605->vdd = FUNC8(dev, "vdd");
	if (FUNC1(cm3605->vdd)) {
		FUNC3(dev, "failed to get VDD regulator\n");
		return FUNC2(cm3605->vdd);
	}
	ret = FUNC21(cm3605->vdd);
	if (ret) {
		FUNC3(dev, "failed to enable VDD regulator\n");
		return ret;
	}

	cm3605->aset = FUNC5(dev, "aset", GPIOD_OUT_HIGH);
	if (FUNC1(cm3605->aset)) {
		FUNC3(dev, "no ASET GPIO\n");
		ret = FUNC2(cm3605->aset);
		goto out_disable_vdd;
	}

	ret = FUNC9(dev, FUNC18(pdev, 0),
			cm3605_prox_irq, NULL, 0, "cm3605", indio_dev);
	if (ret) {
		FUNC3(dev, "unable to request IRQ\n");
		goto out_disable_aset;
	}

	/* Just name the trigger the same as the driver */
	FUNC15("cm3605", &cm3605->led);
	FUNC14(cm3605->led, LED_FULL);

	indio_dev->dev.parent = dev;
	indio_dev->info = &cm3605_info;
	indio_dev->name = "cm3605";
	indio_dev->channels = cm3605_channels;
	indio_dev->num_channels = FUNC0(cm3605_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC11(indio_dev);
	if (ret)
		goto out_remove_trigger;
	FUNC4(dev, "Capella Microsystems CM3605 enabled range 0..%d LUX\n",
		 cm3605->als_max);

	return 0;

out_remove_trigger:
	FUNC14(cm3605->led, LED_OFF);
	FUNC16(cm3605->led);
out_disable_aset:
	FUNC10(cm3605->aset, 0);
out_disable_vdd:
	FUNC20(cm3605->vdd);
	return ret;
}