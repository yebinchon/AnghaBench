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
struct vprbrd_adc {struct vprbrd* vb; } ;
struct vprbrd {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_5__ {TYPE_2__* parent; } ;
struct iio_dev {char* name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 struct vprbrd* FUNC2 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (TYPE_2__*,struct iio_dev*) ; 
 struct vprbrd_adc* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  vprbrd_adc_iio_channels ; 
 int /*<<< orphan*/  vprbrd_adc_iio_info ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct vprbrd *vb = FUNC2(pdev->dev.parent);
	struct vprbrd_adc *adc;
	struct iio_dev *indio_dev;
	int ret;

	/* registering iio */
	indio_dev = FUNC3(&pdev->dev, sizeof(*adc));
	if (!indio_dev) {
		FUNC1(&pdev->dev, "failed allocating iio device\n");
		return -ENOMEM;
	}

	adc = FUNC5(indio_dev);
	adc->vb = vb;
	indio_dev->name = "viperboard adc";
	indio_dev->dev.parent = &pdev->dev;
	indio_dev->info = &vprbrd_adc_iio_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = vprbrd_adc_iio_channels;
	indio_dev->num_channels = FUNC0(vprbrd_adc_iio_channels);

	ret = FUNC4(&pdev->dev, indio_dev);
	if (ret) {
		FUNC1(&pdev->dev, "could not register iio (adc)");
		return ret;
	}

	return 0;
}