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
struct sun6i_dma_dev {int /*<<< orphan*/  rstc; int /*<<< orphan*/  clk; int /*<<< orphan*/  clk_mbus; int /*<<< orphan*/  slave; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sun6i_dma_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sun6i_dma_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct sun6i_dma_dev*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct sun6i_dma_dev *sdc = FUNC3(pdev);

	FUNC2(pdev->dev.of_node);
	FUNC1(&sdc->slave);

	FUNC6(sdc);

	FUNC0(sdc->clk_mbus);
	FUNC0(sdc->clk);
	FUNC4(sdc->rstc);

	FUNC5(sdc);

	return 0;
}