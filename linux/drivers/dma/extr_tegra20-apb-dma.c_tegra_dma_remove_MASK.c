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
struct tegra_dma_channel {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  irq; } ;
struct tegra_dma {struct tegra_dma_channel* channels; TYPE_1__* chip_data; int /*<<< orphan*/  dma_dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int nr_channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tegra_dma_channel*) ; 
 struct tegra_dma* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct tegra_dma *tdma = FUNC2(pdev);
	int i;
	struct tegra_dma_channel *tdc;

	FUNC0(&tdma->dma_dev);

	for (i = 0; i < tdma->chip_data->nr_channels; ++i) {
		tdc = &tdma->channels[i];
		FUNC1(tdc->irq, tdc);
		FUNC5(&tdc->tasklet);
	}

	FUNC3(&pdev->dev);
	if (!FUNC4(&pdev->dev))
		FUNC6(&pdev->dev);

	return 0;
}