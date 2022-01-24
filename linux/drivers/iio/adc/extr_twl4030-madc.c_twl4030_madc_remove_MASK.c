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
struct twl4030_madc_data {int /*<<< orphan*/  usb3v1; } ;
struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct twl4030_madc_data* FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct twl4030_madc_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct twl4030_madc_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct iio_dev *iio_dev = FUNC2(pdev);
	struct twl4030_madc_data *madc = FUNC1(iio_dev);

	FUNC0(iio_dev);

	FUNC4(madc, 0, 0);
	FUNC5(madc, 0);

	FUNC3(madc->usb3v1);

	return 0;
}