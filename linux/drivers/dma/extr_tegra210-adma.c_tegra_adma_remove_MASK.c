#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tegra_adma {int nr_channels; TYPE_1__* channels; int /*<<< orphan*/  dma_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct tegra_adma* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct tegra_adma *tdma = FUNC3(pdev);
	int i;

	FUNC2(pdev->dev.of_node);
	FUNC0(&tdma->dma_dev);

	for (i = 0; i < tdma->nr_channels; ++i)
		FUNC1(tdma->channels[i].irq);

	FUNC5(&pdev->dev);
	FUNC4(&pdev->dev);

	return 0;
}