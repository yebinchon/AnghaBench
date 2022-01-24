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
struct platform_device {int dummy; } ;
struct mxs_lradc_adc {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct mxs_lradc_adc* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mxs_lradc_adc*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 struct iio_dev* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct iio_dev *iio = FUNC5(pdev);
	struct mxs_lradc_adc *adc = FUNC1(iio);

	FUNC0(iio);
	FUNC3(adc);
	FUNC4(iio);
	FUNC2(iio);

	return 0;
}