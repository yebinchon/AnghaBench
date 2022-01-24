#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_3__* dev; int /*<<< orphan*/ * ops; } ;
struct TYPE_18__ {TYPE_3__* dev; int /*<<< orphan*/ * ops; int /*<<< orphan*/  list; } ;
struct TYPE_14__ {int /*<<< orphan*/  polled; } ;
struct TYPE_15__ {TYPE_1__ connector; TYPE_3__* dev; } ;
struct tegra_dsi {int video_fifo_depth; int host_fifo_depth; int lanes; void* mipi; TYPE_5__ host; TYPE_7__ client; void* regs; void* vdd; void* clk_parent; void* clk_lp; void* clk; void* rst; int /*<<< orphan*/  format; int /*<<< orphan*/  flags; TYPE_2__ output; TYPE_3__* dev; } ;
struct resource {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  pm_domain; } ;
struct platform_device {TYPE_3__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int /*<<< orphan*/  MIPI_DSI_MODE_VIDEO ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 void* FUNC4 (TYPE_3__*,char*) ; 
 void* FUNC5 (TYPE_3__*,struct resource*) ; 
 struct tegra_dsi* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (TYPE_3__*,char*) ; 
 void* FUNC8 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  dsi_client_ops ; 
 int FUNC9 (TYPE_7__*) ; 
 int FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct tegra_dsi*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int FUNC15 (struct tegra_dsi*) ; 
 int /*<<< orphan*/  tegra_dsi_host_ops ; 
 int FUNC16 (struct tegra_dsi*) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 void* FUNC18 (TYPE_3__*) ; 
 int FUNC19 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct tegra_dsi *dsi;
	struct resource *regs;
	int err;

	dsi = FUNC6(&pdev->dev, sizeof(*dsi), GFP_KERNEL);
	if (!dsi)
		return -ENOMEM;

	dsi->output.dev = dsi->dev = &pdev->dev;
	dsi->video_fifo_depth = 1920;
	dsi->host_fifo_depth = 64;

	err = FUNC15(dsi);
	if (err < 0)
		return err;

	err = FUNC19(&dsi->output);
	if (err < 0)
		return err;

	dsi->output.connector.polled = DRM_CONNECTOR_POLL_HPD;

	/*
	 * Assume these values by default. When a DSI peripheral driver
	 * attaches to the DSI host, the parameters will be taken from
	 * the attached device.
	 */
	dsi->flags = MIPI_DSI_MODE_VIDEO;
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->lanes = 4;

	if (!pdev->dev.pm_domain) {
		dsi->rst = FUNC8(&pdev->dev, "dsi");
		if (FUNC1(dsi->rst))
			return FUNC2(dsi->rst);
	}

	dsi->clk = FUNC4(&pdev->dev, NULL);
	if (FUNC1(dsi->clk)) {
		FUNC3(&pdev->dev, "cannot get DSI clock\n");
		return FUNC2(dsi->clk);
	}

	dsi->clk_lp = FUNC4(&pdev->dev, "lp");
	if (FUNC1(dsi->clk_lp)) {
		FUNC3(&pdev->dev, "cannot get low-power clock\n");
		return FUNC2(dsi->clk_lp);
	}

	dsi->clk_parent = FUNC4(&pdev->dev, "parent");
	if (FUNC1(dsi->clk_parent)) {
		FUNC3(&pdev->dev, "cannot get parent clock\n");
		return FUNC2(dsi->clk_parent);
	}

	dsi->vdd = FUNC7(&pdev->dev, "avdd-dsi-csi");
	if (FUNC1(dsi->vdd)) {
		FUNC3(&pdev->dev, "cannot get VDD supply\n");
		return FUNC2(dsi->vdd);
	}

	err = FUNC16(dsi);
	if (err < 0) {
		FUNC3(&pdev->dev, "cannot setup clocks\n");
		return err;
	}

	regs = FUNC12(pdev, IORESOURCE_MEM, 0);
	dsi->regs = FUNC5(&pdev->dev, regs);
	if (FUNC1(dsi->regs))
		return FUNC2(dsi->regs);

	dsi->mipi = FUNC18(&pdev->dev);
	if (FUNC1(dsi->mipi))
		return FUNC2(dsi->mipi);

	dsi->host.ops = &tegra_dsi_host_ops;
	dsi->host.dev = &pdev->dev;

	err = FUNC10(&dsi->host);
	if (err < 0) {
		FUNC3(&pdev->dev, "failed to register DSI host: %d\n", err);
		goto mipi_free;
	}

	FUNC13(pdev, dsi);
	FUNC14(&pdev->dev);

	FUNC0(&dsi->client.list);
	dsi->client.ops = &dsi_client_ops;
	dsi->client.dev = &pdev->dev;

	err = FUNC9(&dsi->client);
	if (err < 0) {
		FUNC3(&pdev->dev, "failed to register host1x client: %d\n",
			err);
		goto unregister;
	}

	return 0;

unregister:
	FUNC11(&dsi->host);
mipi_free:
	FUNC17(dsi->mipi);
	return err;
}