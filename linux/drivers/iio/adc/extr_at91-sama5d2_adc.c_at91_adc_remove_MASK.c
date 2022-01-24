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
struct at91_adc_state {int /*<<< orphan*/  reg; int /*<<< orphan*/  vref; int /*<<< orphan*/  per_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct at91_adc_state* FUNC3 (struct iio_dev*) ; 
 struct iio_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC4(pdev);
	struct at91_adc_state *st = FUNC3(indio_dev);

	FUNC2(indio_dev);

	FUNC0(pdev);

	FUNC1(st->per_clk);

	FUNC5(st->vref);
	FUNC5(st->reg);

	return 0;
}