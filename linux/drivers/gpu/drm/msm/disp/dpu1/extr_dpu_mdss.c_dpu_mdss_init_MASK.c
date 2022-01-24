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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct msm_drm_private {TYPE_1__* mdss; } ;
struct dss_module_power {int /*<<< orphan*/  clk_config; int /*<<< orphan*/  num_clk; } ;
struct drm_device {int /*<<< orphan*/  dev; struct msm_drm_private* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/ * funcs; struct drm_device* dev; } ;
struct dpu_mdss {int /*<<< orphan*/ * mmio; TYPE_1__ base; struct dss_module_power mp; int /*<<< orphan*/  mmio_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct dpu_mdss*) ; 
 int /*<<< orphan*/  FUNC6 (struct dpu_mdss*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dpu_mdss* FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  dpu_mdss_irq ; 
 int FUNC11 (struct drm_device*,struct dpu_mdss*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,struct dpu_mdss*) ; 
 int /*<<< orphan*/  mdss_funcs ; 
 int FUNC13 (struct platform_device*,struct dss_module_power*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (struct platform_device*,char*,char*) ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct resource*) ; 
 struct platform_device* FUNC20 (int /*<<< orphan*/ ) ; 

int FUNC21(struct drm_device *dev)
{
	struct platform_device *pdev = FUNC20(dev->dev);
	struct msm_drm_private *priv = dev->dev_private;
	struct resource *res;
	struct dpu_mdss *dpu_mdss;
	struct dss_module_power *mp;
	int ret = 0;
	int irq;

	dpu_mdss = FUNC9(dev->dev, sizeof(*dpu_mdss), GFP_KERNEL);
	if (!dpu_mdss)
		return -ENOMEM;

	dpu_mdss->mmio = FUNC15(pdev, "mdss", "mdss");
	if (FUNC3(dpu_mdss->mmio))
		return FUNC4(dpu_mdss->mmio);

	FUNC1("mapped mdss address space @%pK\n", dpu_mdss->mmio);

	res = FUNC17(pdev, IORESOURCE_MEM, "mdss");
	if (!res) {
		FUNC2("failed to get memory resource for mdss\n");
		return -ENOMEM;
	}
	dpu_mdss->mmio_len = FUNC19(res);

	ret = FUNC11(dev, dpu_mdss);
	if (ret)
		return ret;

	mp = &dpu_mdss->mp;
	ret = FUNC13(pdev, mp);
	if (ret) {
		FUNC0("failed to parse clocks, ret=%d\n", ret);
		goto clk_parse_err;
	}

	dpu_mdss->base.dev = dev;
	dpu_mdss->base.funcs = &mdss_funcs;

	ret = FUNC5(dpu_mdss);
	if (ret)
		goto irq_domain_error;

	irq = FUNC16(pdev, 0);
	if (irq < 0)
		goto irq_error;

	FUNC12(irq, dpu_mdss_irq,
					 dpu_mdss);

	priv->mdss = &dpu_mdss->base;

	FUNC18(dev->dev);

	FUNC10(priv->mdss);

	return ret;

irq_error:
	FUNC6(dpu_mdss);
irq_domain_error:
	FUNC14(mp->clk_config, mp->num_clk);
clk_parse_err:
	FUNC8(&pdev->dev, mp->clk_config);
	if (dpu_mdss->mmio)
		FUNC7(&pdev->dev, dpu_mdss->mmio);
	dpu_mdss->mmio = NULL;
	return ret;
}