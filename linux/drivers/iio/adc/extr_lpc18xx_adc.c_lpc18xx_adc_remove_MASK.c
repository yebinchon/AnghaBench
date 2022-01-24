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
struct lpc18xx_adc {int /*<<< orphan*/  vref; int /*<<< orphan*/  clk; scalar_t__ base; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ LPC18XX_ADC_CR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct lpc18xx_adc* FUNC2 (struct iio_dev*) ; 
 struct iio_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC3(pdev);
	struct lpc18xx_adc *adc = FUNC2(indio_dev);

	FUNC1(indio_dev);

	FUNC5(0, adc->base + LPC18XX_ADC_CR);
	FUNC0(adc->clk);
	FUNC4(adc->vref);

	return 0;
}