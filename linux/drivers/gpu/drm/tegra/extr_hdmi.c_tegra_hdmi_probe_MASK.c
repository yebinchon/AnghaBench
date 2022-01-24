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
struct TYPE_3__ {int /*<<< orphan*/ * dev; } ;
struct tegra_hdmi {int stereo; int dvi; int irq; TYPE_2__ client; int /*<<< orphan*/ * dev; void* regs; TYPE_1__ output; void* vdd; void* pll; void* hdmi; void* clk_parent; void* clk; void* rst; int /*<<< orphan*/  audio_source; int /*<<< orphan*/  config; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,struct resource*) ; 
 struct tegra_hdmi* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_hdmi*) ; 
 void* FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  hdmi_client_ops ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct tegra_hdmi*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tegra_hdmi_irq ; 
 int FUNC18 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct tegra_hdmi *hdmi;
	struct resource *regs;
	int err;

	hdmi = FUNC8(&pdev->dev, sizeof(*hdmi), GFP_KERNEL);
	if (!hdmi)
		return -ENOMEM;

	hdmi->config = FUNC13(&pdev->dev);
	hdmi->dev = &pdev->dev;

	hdmi->audio_source = AUTO;
	hdmi->stereo = false;
	hdmi->dvi = false;

	hdmi->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC1(hdmi->clk)) {
		FUNC4(&pdev->dev, "failed to get clock\n");
		return FUNC2(hdmi->clk);
	}

	hdmi->rst = FUNC11(&pdev->dev, "hdmi");
	if (FUNC1(hdmi->rst)) {
		FUNC4(&pdev->dev, "failed to get reset\n");
		return FUNC2(hdmi->rst);
	}

	hdmi->clk_parent = FUNC6(&pdev->dev, "parent");
	if (FUNC1(hdmi->clk_parent))
		return FUNC2(hdmi->clk_parent);

	err = FUNC3(hdmi->clk, hdmi->clk_parent);
	if (err < 0) {
		FUNC4(&pdev->dev, "failed to setup clocks: %d\n", err);
		return err;
	}

	hdmi->hdmi = FUNC9(&pdev->dev, "hdmi");
	if (FUNC1(hdmi->hdmi)) {
		FUNC4(&pdev->dev, "failed to get HDMI regulator\n");
		return FUNC2(hdmi->hdmi);
	}

	hdmi->pll = FUNC9(&pdev->dev, "pll");
	if (FUNC1(hdmi->pll)) {
		FUNC4(&pdev->dev, "failed to get PLL regulator\n");
		return FUNC2(hdmi->pll);
	}

	hdmi->vdd = FUNC9(&pdev->dev, "vdd");
	if (FUNC1(hdmi->vdd)) {
		FUNC4(&pdev->dev, "failed to get VDD regulator\n");
		return FUNC2(hdmi->vdd);
	}

	hdmi->output.dev = &pdev->dev;

	err = FUNC18(&hdmi->output);
	if (err < 0)
		return err;

	regs = FUNC15(pdev, IORESOURCE_MEM, 0);
	hdmi->regs = FUNC7(&pdev->dev, regs);
	if (FUNC1(hdmi->regs))
		return FUNC2(hdmi->regs);

	err = FUNC14(pdev, 0);
	if (err < 0)
		return err;

	hdmi->irq = err;

	err = FUNC10(hdmi->dev, hdmi->irq, tegra_hdmi_irq, 0,
			       FUNC5(hdmi->dev), hdmi);
	if (err < 0) {
		FUNC4(&pdev->dev, "failed to request IRQ#%u: %d\n",
			hdmi->irq, err);
		return err;
	}

	FUNC16(pdev, hdmi);
	FUNC17(&pdev->dev);

	FUNC0(&hdmi->client.list);
	hdmi->client.ops = &hdmi_client_ops;
	hdmi->client.dev = &pdev->dev;

	err = FUNC12(&hdmi->client);
	if (err < 0) {
		FUNC4(&pdev->dev, "failed to register host1x client: %d\n",
			err);
		return err;
	}

	return 0;
}