#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct regulator {int dummy; } ;
struct TYPE_8__ {struct hdmi_platform_config* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hdmi_platform_config {int hpd_reg_cnt; int pwr_reg_cnt; int hpd_clk_cnt; int pwr_clk_cnt; int /*<<< orphan*/ * pwr_clk_names; int /*<<< orphan*/ * hpd_clk_names; int /*<<< orphan*/ * pwr_reg_names; int /*<<< orphan*/ * hpd_reg_names; int /*<<< orphan*/  qfprom_mmio_name; int /*<<< orphan*/  mmio_name; } ;
struct hdmi {struct regulator* hdcp_ctrl; struct regulator* i2c; int /*<<< orphan*/  workq; struct regulator** pwr_clks; struct regulator** hpd_clks; struct regulator** pwr_regs; struct regulator** hpd_regs; struct regulator* qfprom_mmio; int /*<<< orphan*/  mmio_phy_addr; struct regulator* mmio; int /*<<< orphan*/  reg_lock; struct hdmi_platform_config* config; struct platform_device* pdev; } ;
typedef  struct regulator clk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int ENOMEM ; 
 struct hdmi* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC3 (struct regulator*) ; 
 int FUNC4 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 void* FUNC7 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 struct hdmi* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct regulator* FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct regulator* FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hdmi*) ; 
 int FUNC12 (struct hdmi*) ; 
 struct regulator* FUNC13 (struct hdmi*) ; 
 struct regulator* FUNC14 (struct hdmi*) ; 
 void* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct hdmi *FUNC19(struct platform_device *pdev)
{
	struct hdmi_platform_config *config = pdev->dev.platform_data;
	struct hdmi *hdmi = NULL;
	struct resource *res;
	int i, ret;

	hdmi = FUNC8(&pdev->dev, sizeof(*hdmi), GFP_KERNEL);
	if (!hdmi) {
		ret = -ENOMEM;
		goto fail;
	}

	hdmi->pdev = pdev;
	hdmi->config = config;
	FUNC18(&hdmi->reg_lock);

	hdmi->mmio = FUNC15(pdev, config->mmio_name, "HDMI");
	if (FUNC3(hdmi->mmio)) {
		ret = FUNC4(hdmi->mmio);
		goto fail;
	}

	/* HDCP needs physical address of hdmi register */
	res = FUNC16(pdev, IORESOURCE_MEM,
		config->mmio_name);
	hdmi->mmio_phy_addr = res->start;

	hdmi->qfprom_mmio = FUNC15(pdev,
		config->qfprom_mmio_name, "HDMI_QFPROM");
	if (FUNC3(hdmi->qfprom_mmio)) {
		FUNC1(&pdev->dev, "can't find qfprom resource\n");
		hdmi->qfprom_mmio = NULL;
	}

	hdmi->hpd_regs = FUNC7(&pdev->dev,
				      config->hpd_reg_cnt,
				      sizeof(hdmi->hpd_regs[0]),
				      GFP_KERNEL);
	if (!hdmi->hpd_regs) {
		ret = -ENOMEM;
		goto fail;
	}
	for (i = 0; i < config->hpd_reg_cnt; i++) {
		struct regulator *reg;

		reg = FUNC9(&pdev->dev,
				config->hpd_reg_names[i]);
		if (FUNC3(reg)) {
			ret = FUNC4(reg);
			FUNC0(&pdev->dev, "failed to get hpd regulator: %s (%d)\n",
					config->hpd_reg_names[i], ret);
			goto fail;
		}

		hdmi->hpd_regs[i] = reg;
	}

	hdmi->pwr_regs = FUNC7(&pdev->dev,
				      config->pwr_reg_cnt,
				      sizeof(hdmi->pwr_regs[0]),
				      GFP_KERNEL);
	if (!hdmi->pwr_regs) {
		ret = -ENOMEM;
		goto fail;
	}
	for (i = 0; i < config->pwr_reg_cnt; i++) {
		struct regulator *reg;

		reg = FUNC9(&pdev->dev,
				config->pwr_reg_names[i]);
		if (FUNC3(reg)) {
			ret = FUNC4(reg);
			FUNC0(&pdev->dev, "failed to get pwr regulator: %s (%d)\n",
					config->pwr_reg_names[i], ret);
			goto fail;
		}

		hdmi->pwr_regs[i] = reg;
	}

	hdmi->hpd_clks = FUNC7(&pdev->dev,
				      config->hpd_clk_cnt,
				      sizeof(hdmi->hpd_clks[0]),
				      GFP_KERNEL);
	if (!hdmi->hpd_clks) {
		ret = -ENOMEM;
		goto fail;
	}
	for (i = 0; i < config->hpd_clk_cnt; i++) {
		struct clk *clk;

		clk = FUNC10(pdev, config->hpd_clk_names[i]);
		if (FUNC3(clk)) {
			ret = FUNC4(clk);
			FUNC0(&pdev->dev, "failed to get hpd clk: %s (%d)\n",
					config->hpd_clk_names[i], ret);
			goto fail;
		}

		hdmi->hpd_clks[i] = clk;
	}

	hdmi->pwr_clks = FUNC7(&pdev->dev,
				      config->pwr_clk_cnt,
				      sizeof(hdmi->pwr_clks[0]),
				      GFP_KERNEL);
	if (!hdmi->pwr_clks) {
		ret = -ENOMEM;
		goto fail;
	}
	for (i = 0; i < config->pwr_clk_cnt; i++) {
		struct clk *clk;

		clk = FUNC10(pdev, config->pwr_clk_names[i]);
		if (FUNC3(clk)) {
			ret = FUNC4(clk);
			FUNC0(&pdev->dev, "failed to get pwr clk: %s (%d)\n",
					config->pwr_clk_names[i], ret);
			goto fail;
		}

		hdmi->pwr_clks[i] = clk;
	}

	FUNC17(&pdev->dev);

	hdmi->workq = FUNC5("msm_hdmi", 0);

	hdmi->i2c = FUNC14(hdmi);
	if (FUNC3(hdmi->i2c)) {
		ret = FUNC4(hdmi->i2c);
		FUNC0(&pdev->dev, "failed to get i2c: %d\n", ret);
		hdmi->i2c = NULL;
		goto fail;
	}

	ret = FUNC12(hdmi);
	if (ret) {
		FUNC0(&pdev->dev, "failed to get phy\n");
		goto fail;
	}

	hdmi->hdcp_ctrl = FUNC13(hdmi);
	if (FUNC3(hdmi->hdcp_ctrl)) {
		FUNC6(&pdev->dev, "failed to init hdcp: disabled\n");
		hdmi->hdcp_ctrl = NULL;
	}

	return hdmi;

fail:
	if (hdmi)
		FUNC11(hdmi);

	return FUNC2(ret);
}