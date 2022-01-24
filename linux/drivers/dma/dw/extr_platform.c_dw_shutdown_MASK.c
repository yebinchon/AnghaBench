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
struct dw_dma_chip_pdata {struct dw_dma_chip* chip; } ;
struct dw_dma_chip {int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_dma_chip*) ; 
 struct dw_dma_chip_pdata* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct platform_device *pdev)
{
	struct dw_dma_chip_pdata *data = FUNC2(pdev);
	struct dw_dma_chip *chip = data->chip;

	/*
	 * We have to call do_dw_dma_disable() to stop any ongoing transfer. On
	 * some platforms we can't do that since DMA device is powered off.
	 * Moreover we have no possibility to check if the platform is affected
	 * or not. That's why we call pm_runtime_get_sync() / pm_runtime_put()
	 * unconditionally. On the other hand we can't use
	 * pm_runtime_suspended() because runtime PM framework is not fully
	 * used by the driver.
	 */
	FUNC3(chip->dev);
	FUNC1(chip);
	FUNC4(chip->dev);

	FUNC0(chip->clk);
}