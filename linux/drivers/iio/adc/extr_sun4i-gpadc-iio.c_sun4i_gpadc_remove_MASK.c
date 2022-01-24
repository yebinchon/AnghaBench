#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sun4i_gpadc_iio {int /*<<< orphan*/  no_irq; int /*<<< orphan*/  tzd; int /*<<< orphan*/  sensor_device; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_THERMAL_OF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct sun4i_gpadc_iio* FUNC2 (struct iio_dev*) ; 
 struct iio_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC3(pdev);
	struct sun4i_gpadc_iio *info = FUNC2(indio_dev);

	FUNC5(&pdev->dev);
	FUNC4(&pdev->dev);

	if (!FUNC0(CONFIG_THERMAL_OF))
		return 0;

	FUNC6(info->sensor_device, info->tzd);

	if (!info->no_irq)
		FUNC1(indio_dev);

	return 0;
}