#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct sun4i_gpadc_iio {int /*<<< orphan*/  no_irq; int /*<<< orphan*/  tzd; int /*<<< orphan*/  sensor_device; int /*<<< orphan*/  completion; struct iio_dev* indio_dev; int /*<<< orphan*/  mutex; } ;
struct TYPE_13__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_12__ {scalar_t__ of_node; TYPE_2__* parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_THERMAL_OF ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_GPADC_AUTOSUSPEND_DELAY ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct iio_dev* FUNC5 (TYPE_2__*,int) ; 
 int FUNC6 (TYPE_2__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*) ; 
 struct sun4i_gpadc_iio* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  sun4i_gpadc_iio_info ; 
 int FUNC18 (struct platform_device*,struct iio_dev*) ; 
 int FUNC19 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  sun4i_ts_tz_ops ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sun4i_gpadc_iio*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct sun4i_gpadc_iio *info;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC5(&pdev->dev, sizeof(*info));
	if (!indio_dev)
		return -ENOMEM;

	info = FUNC8(indio_dev);
	FUNC11(pdev, indio_dev);

	FUNC10(&info->mutex);
	info->indio_dev = indio_dev;
	FUNC9(&info->completion);
	indio_dev->name = FUNC4(&pdev->dev);
	indio_dev->dev.parent = &pdev->dev;
	indio_dev->dev.of_node = pdev->dev.of_node;
	indio_dev->info = &sun4i_gpadc_iio_info;
	indio_dev->modes = INDIO_DIRECT_MODE;

	if (pdev->dev.of_node)
		ret = FUNC18(pdev, indio_dev);
	else
		ret = FUNC19(pdev, indio_dev);

	if (ret)
		return ret;

	FUNC15(&pdev->dev,
					 SUN4I_GPADC_AUTOSUSPEND_DELAY);
	FUNC17(&pdev->dev);
	FUNC16(&pdev->dev);
	FUNC13(&pdev->dev);

	if (FUNC0(CONFIG_THERMAL_OF)) {
		info->tzd = FUNC20(info->sensor_device,
							    0, info,
							    &sun4i_ts_tz_ops);
		/*
		 * Do not fail driver probing when failing to register in
		 * thermal because no thermal DT node is found.
		 */
		if (FUNC1(info->tzd) && FUNC2(info->tzd) != -ENODEV) {
			FUNC3(&pdev->dev,
				"could not register thermal sensor: %ld\n",
				FUNC2(info->tzd));
			return FUNC2(info->tzd);
		}
	}

	ret = FUNC6(&pdev->dev, indio_dev);
	if (ret < 0) {
		FUNC3(&pdev->dev, "could not register the device\n");
		goto err_map;
	}

	return 0;

err_map:
	if (!info->no_irq && FUNC0(CONFIG_THERMAL_OF))
		FUNC7(indio_dev);

	FUNC14(&pdev->dev);
	FUNC12(&pdev->dev);

	return ret;
}