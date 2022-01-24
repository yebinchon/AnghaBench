#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * dev; int /*<<< orphan*/ * ops; int /*<<< orphan*/  list; } ;
struct tegra_dc {scalar_t__ pipe; scalar_t__ irq; TYPE_2__ client; int /*<<< orphan*/  regs; int /*<<< orphan*/  powergate; TYPE_1__* soc; int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; int /*<<< orphan*/ * dev; int /*<<< orphan*/  list; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ has_powergate; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEGRA_POWERGATE_DIS ; 
 int /*<<< orphan*/  TEGRA_POWERGATE_DISB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dc_client_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct resource*) ; 
 struct tegra_dc* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (TYPE_2__*) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct tegra_dc*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct tegra_dc*) ; 
 int FUNC18 (struct tegra_dc*) ; 
 int FUNC19 (struct tegra_dc*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int,int) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct resource *regs;
	struct tegra_dc *dc;
	int err;

	dc = FUNC8(&pdev->dev, sizeof(*dc), GFP_KERNEL);
	if (!dc)
		return -ENOMEM;

	dc->soc = FUNC11(&pdev->dev);

	FUNC0(&dc->list);
	dc->dev = &pdev->dev;

	err = FUNC18(dc);
	if (err < 0)
		return err;

	err = FUNC17(dc);
	if (err < 0)
		return err;

	dc->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC1(dc->clk)) {
		FUNC5(&pdev->dev, "failed to get clock\n");
		return FUNC2(dc->clk);
	}

	dc->rst = FUNC9(&pdev->dev, "dc");
	if (FUNC1(dc->rst)) {
		FUNC5(&pdev->dev, "failed to get reset\n");
		return FUNC2(dc->rst);
	}

	/* assert reset and disable clock */
	err = FUNC4(dc->clk);
	if (err < 0)
		return err;

	FUNC21(2000, 4000);

	err = FUNC16(dc->rst);
	if (err < 0)
		return err;

	FUNC21(2000, 4000);

	FUNC3(dc->clk);

	if (dc->soc->has_powergate) {
		if (dc->pipe == 0)
			dc->powergate = TEGRA_POWERGATE_DIS;
		else
			dc->powergate = TEGRA_POWERGATE_DISB;

		FUNC20(dc->powergate);
	}

	regs = FUNC13(pdev, IORESOURCE_MEM, 0);
	dc->regs = FUNC7(&pdev->dev, regs);
	if (FUNC1(dc->regs))
		return FUNC2(dc->regs);

	dc->irq = FUNC12(pdev, 0);
	if (dc->irq < 0) {
		FUNC5(&pdev->dev, "failed to get IRQ\n");
		return -ENXIO;
	}

	err = FUNC19(dc);
	if (err < 0 && err != -ENODEV) {
		FUNC5(&pdev->dev, "failed to probe RGB output: %d\n", err);
		return err;
	}

	FUNC14(pdev, dc);
	FUNC15(&pdev->dev);

	FUNC0(&dc->client.list);
	dc->client.ops = &dc_client_ops;
	dc->client.dev = &pdev->dev;

	err = FUNC10(&dc->client);
	if (err < 0) {
		FUNC5(&pdev->dev, "failed to register host1x client: %d\n",
			err);
		return err;
	}

	return 0;
}