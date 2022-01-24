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
struct dw_dma_chip_pdata {int (* remove ) (struct dw_dma_chip*) ;struct dw_dma_chip* chip; } ;
struct dw_dma_chip {int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; int /*<<< orphan*/  dw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct dw_dma_chip_pdata* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct dw_dma_chip*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct dw_dma_chip_pdata *data = FUNC4(pdev);
	struct dw_dma_chip *chip = data->chip;
	int ret;

	FUNC2(chip->dw);

	FUNC3(chip->dw);

	ret = data->remove(chip);
	if (ret)
		FUNC1(chip->dev, "can't remove device properly: %d\n", ret);

	FUNC5(&pdev->dev);
	FUNC0(chip->clk);

	return 0;
}