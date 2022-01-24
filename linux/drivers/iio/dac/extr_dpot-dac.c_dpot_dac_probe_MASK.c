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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int num_channels; int /*<<< orphan*/ * channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct dpot_dac {int max_ohms; int /*<<< orphan*/  vref; int /*<<< orphan*/  dpot; } ;
typedef  enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int IIO_RESISTANCE ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct iio_dev* FUNC5 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  dpot_dac_iio_channel ; 
 int /*<<< orphan*/  dpot_dac_info ; 
 int FUNC8 (struct iio_dev*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int*) ; 
 struct dpot_dac* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct iio_dev *indio_dev;
	struct dpot_dac *dac;
	enum iio_chan_type type;
	int ret;

	indio_dev = FUNC5(dev, sizeof(*dac));
	if (!indio_dev)
		return -ENOMEM;

	FUNC11(pdev, indio_dev);
	dac = FUNC10(indio_dev);

	indio_dev->name = FUNC3(dev);
	indio_dev->dev.parent = dev;
	indio_dev->info = &dpot_dac_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = &dpot_dac_iio_channel;
	indio_dev->num_channels = 1;

	dac->vref = FUNC6(dev, "vref");
	if (FUNC0(dac->vref)) {
		if (FUNC1(dac->vref) != -EPROBE_DEFER)
			FUNC2(&pdev->dev, "failed to get vref regulator\n");
		return FUNC1(dac->vref);
	}

	dac->dpot = FUNC4(dev, "dpot");
	if (FUNC0(dac->dpot)) {
		if (FUNC1(dac->dpot) != -EPROBE_DEFER)
			FUNC2(dev, "failed to get dpot input channel\n");
		return FUNC1(dac->dpot);
	}

	ret = FUNC9(dac->dpot, &type);
	if (ret < 0)
		return ret;

	if (type != IIO_RESISTANCE) {
		FUNC2(dev, "dpot is of the wrong type\n");
		return -EINVAL;
	}

	ret = FUNC7(indio_dev);
	if (ret < 0)
		return ret;
	dac->max_ohms = ret;

	ret = FUNC13(dac->vref);
	if (ret) {
		FUNC2(dev, "failed to enable the vref regulator\n");
		return ret;
	}

	ret = FUNC8(indio_dev);
	if (ret) {
		FUNC2(dev, "failed to register iio device\n");
		goto disable_reg;
	}

	return 0;

disable_reg:
	FUNC12(dac->vref);
	return ret;
}