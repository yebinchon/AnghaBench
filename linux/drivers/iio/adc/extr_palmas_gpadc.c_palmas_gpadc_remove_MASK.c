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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct palmas_gpadc {int /*<<< orphan*/  irq_auto_1; scalar_t__ wakeup2_enable; int /*<<< orphan*/  irq_auto_0; scalar_t__ wakeup1_enable; int /*<<< orphan*/  irq; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 struct iio_dev* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct palmas_gpadc*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct palmas_gpadc* FUNC4 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC0(&pdev->dev);
	struct palmas_gpadc *adc = FUNC4(indio_dev);

	if (adc->wakeup1_enable || adc->wakeup2_enable)
		FUNC1(&pdev->dev);
	FUNC3(indio_dev);
	FUNC2(adc->irq, adc);
	if (adc->wakeup1_enable)
		FUNC2(adc->irq_auto_0, adc);
	if (adc->wakeup2_enable)
		FUNC2(adc->irq_auto_1, adc);

	return 0;
}