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
struct msm_drm_private {int /*<<< orphan*/ * mdss; } ;
struct dss_module_power {int /*<<< orphan*/  clk_config; int /*<<< orphan*/  num_clk; } ;
struct drm_device {int /*<<< orphan*/  dev; struct msm_drm_private* dev_private; } ;
struct dpu_mdss {int num_paths; int /*<<< orphan*/ * mmio; int /*<<< orphan*/ * path; struct dss_module_power mp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_mdss*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct dpu_mdss* FUNC9 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct drm_device *dev)
{
	struct platform_device *pdev = FUNC10(dev->dev);
	struct msm_drm_private *priv = dev->dev_private;
	struct dpu_mdss *dpu_mdss = FUNC9(priv->mdss);
	struct dss_module_power *mp = &dpu_mdss->mp;
	int irq;
	int i;

	FUNC8(dev->dev);
	FUNC7(dev->dev);
	FUNC0(dpu_mdss);
	irq = FUNC6(pdev, 0);
	FUNC4(irq, NULL, NULL);
	FUNC5(mp->clk_config, mp->num_clk);
	FUNC2(&pdev->dev, mp->clk_config);

	for (i = 0; i < dpu_mdss->num_paths; i++)
		FUNC3(dpu_mdss->path[i]);

	if (dpu_mdss->mmio)
		FUNC1(&pdev->dev, dpu_mdss->mmio);
	dpu_mdss->mmio = NULL;
	priv->mdss = NULL;
}