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
struct rockchip_saradc {int /*<<< orphan*/  vref; int /*<<< orphan*/  pclk; int /*<<< orphan*/  clk; } ;
struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct rockchip_saradc* FUNC2 (struct iio_dev*) ; 
 struct iio_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC3(pdev);
	struct rockchip_saradc *info = FUNC2(indio_dev);

	FUNC1(indio_dev);
	FUNC0(info->clk);
	FUNC0(info->pclk);
	FUNC4(info->vref);

	return 0;
}