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
struct imx7d_adc {int /*<<< orphan*/  vref; int /*<<< orphan*/  clk; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 struct imx7d_adc* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct imx7d_adc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct imx7d_adc *info = FUNC2(indio_dev);

	FUNC3(info);

	FUNC0(info->clk);
	FUNC4(info->vref);

	return 0;
}