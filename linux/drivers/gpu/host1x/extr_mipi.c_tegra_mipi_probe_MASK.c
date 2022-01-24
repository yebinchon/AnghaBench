#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tegra_mipi {int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; int /*<<< orphan*/  regs; TYPE_1__* dev; int /*<<< orphan*/  soc; } ;
struct resource {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct resource*) ; 
 struct tegra_mipi* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct tegra_mipi*) ; 
 int /*<<< orphan*/  tegra_mipi_of_match ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	const struct of_device_id *match;
	struct tegra_mipi *mipi;
	struct resource *res;
	int err;

	match = FUNC8(tegra_mipi_of_match, pdev->dev.of_node);
	if (!match)
		return -ENODEV;

	mipi = FUNC6(&pdev->dev, sizeof(*mipi), GFP_KERNEL);
	if (!mipi)
		return -ENOMEM;

	mipi->soc = match->data;
	mipi->dev = &pdev->dev;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	mipi->regs = FUNC5(&pdev->dev, res);
	if (FUNC0(mipi->regs))
		return FUNC1(mipi->regs);

	FUNC7(&mipi->lock);

	mipi->clk = FUNC4(&pdev->dev, NULL);
	if (FUNC0(mipi->clk)) {
		FUNC3(&pdev->dev, "failed to get clock\n");
		return FUNC1(mipi->clk);
	}

	err = FUNC2(mipi->clk);
	if (err < 0)
		return err;

	FUNC10(pdev, mipi);

	return 0;
}