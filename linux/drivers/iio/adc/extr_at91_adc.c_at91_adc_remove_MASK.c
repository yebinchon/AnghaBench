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
struct at91_adc_state {int /*<<< orphan*/  irq; int /*<<< orphan*/  clk; int /*<<< orphan*/  adc_clk; int /*<<< orphan*/  touchscreen_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct at91_adc_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 struct at91_adc_state* FUNC6 (struct iio_dev*) ; 
 struct iio_dev* FUNC7 (struct platform_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct iio_dev *idev = FUNC7(pdev);
	struct at91_adc_state *st = FUNC6(idev);

	FUNC5(idev);
	if (!st->touchscreen_type) {
		FUNC1(idev);
		FUNC0(idev);
	} else {
		FUNC2(st);
	}
	FUNC3(st->adc_clk);
	FUNC3(st->clk);
	FUNC4(st->irq, idev);

	return 0;
}