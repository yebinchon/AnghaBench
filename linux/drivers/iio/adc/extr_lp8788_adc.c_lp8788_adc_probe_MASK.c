#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct lp8788_adc {int /*<<< orphan*/  lock; struct lp8788* lp; } ;
struct lp8788 {int /*<<< orphan*/  pdata; } ;
struct TYPE_4__ {TYPE_2__* parent; int /*<<< orphan*/  of_node; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 struct lp8788* FUNC2 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 struct lp8788_adc* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  lp8788_adc_channels ; 
 int /*<<< orphan*/  lp8788_adc_info ; 
 int FUNC7 (struct iio_dev*,int /*<<< orphan*/ ,struct lp8788_adc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct lp8788 *lp = FUNC2(pdev->dev.parent);
	struct iio_dev *indio_dev;
	struct lp8788_adc *adc;
	int ret;

	indio_dev = FUNC3(&pdev->dev, sizeof(*adc));
	if (!indio_dev)
		return -ENOMEM;

	adc = FUNC6(indio_dev);
	adc->lp = lp;
	FUNC9(pdev, indio_dev);

	indio_dev->dev.of_node = pdev->dev.of_node;
	ret = FUNC7(indio_dev, lp->pdata, adc);
	if (ret)
		return ret;

	FUNC8(&adc->lock);

	indio_dev->dev.parent = &pdev->dev;
	indio_dev->name = pdev->name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &lp8788_adc_info;
	indio_dev->channels = lp8788_adc_channels;
	indio_dev->num_channels = FUNC0(lp8788_adc_channels);

	ret = FUNC4(indio_dev);
	if (ret) {
		FUNC1(&pdev->dev, "iio dev register err: %d\n", ret);
		goto err_iio_device;
	}

	return 0;

err_iio_device:
	FUNC5(indio_dev);
	return ret;
}