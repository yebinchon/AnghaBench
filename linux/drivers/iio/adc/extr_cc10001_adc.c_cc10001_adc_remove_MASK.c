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
struct iio_dev {int dummy; } ;
struct cc10001_adc_device {int /*<<< orphan*/  reg; int /*<<< orphan*/  adc_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cc10001_adc_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct cc10001_adc_device* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 struct iio_dev* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC5(pdev);
	struct cc10001_adc_device *adc_dev = FUNC3(indio_dev);

	FUNC0(adc_dev);
	FUNC2(indio_dev);
	FUNC4(indio_dev);
	FUNC1(adc_dev->adc_clk);
	FUNC6(adc_dev->reg);

	return 0;
}