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
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct exynos_adc {int /*<<< orphan*/  vdd; TYPE_1__* data; int /*<<< orphan*/  irq; scalar_t__ input; int /*<<< orphan*/  tsirq; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* exit_hw ) (struct exynos_adc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_INPUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct exynos_adc*) ; 
 int /*<<< orphan*/  exynos_adc_remove_devices ; 
 int /*<<< orphan*/  FUNC3 (struct exynos_adc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct exynos_adc*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 struct exynos_adc* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 struct iio_dev* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct exynos_adc*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC8(pdev);
	struct exynos_adc *info = FUNC6(indio_dev);

	if (FUNC0(CONFIG_INPUT) && info->input) {
		FUNC4(info->tsirq, info);
		FUNC7(info->input);
	}
	FUNC1(&indio_dev->dev, NULL,
				exynos_adc_remove_devices);
	FUNC5(indio_dev);
	FUNC4(info->irq, info);
	if (info->data->exit_hw)
		info->data->exit_hw(info);
	FUNC2(info);
	FUNC3(info);
	FUNC9(info->vdd);

	return 0;
}