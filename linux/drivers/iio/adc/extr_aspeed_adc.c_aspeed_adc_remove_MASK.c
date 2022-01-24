#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct aspeed_adc_data {TYPE_1__* clk_prescaler; TYPE_1__* clk_scaler; int /*<<< orphan*/  rst; scalar_t__ base; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASPEED_OPERATION_MODE_POWER_DOWN ; 
 scalar_t__ ASPEED_REG_ENGINE_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct aspeed_adc_data* FUNC3 (struct iio_dev*) ; 
 struct iio_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC4(pdev);
	struct aspeed_adc_data *data = FUNC3(indio_dev);

	FUNC2(indio_dev);
	FUNC6(ASPEED_OPERATION_MODE_POWER_DOWN,
		data->base + ASPEED_REG_ENGINE_CONTROL);
	FUNC0(data->clk_scaler->clk);
	FUNC5(data->rst);
	FUNC1(data->clk_scaler);
	FUNC1(data->clk_prescaler);

	return 0;
}