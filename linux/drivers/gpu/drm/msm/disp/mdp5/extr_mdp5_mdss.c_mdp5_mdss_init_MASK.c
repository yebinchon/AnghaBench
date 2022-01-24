#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct msm_drm_private {TYPE_1__* mdss; } ;
struct TYPE_8__ {int /*<<< orphan*/ * funcs; struct drm_device* dev; } ;
struct mdp5_mdss {void* vdd; TYPE_1__ base; void* vbif; void* mmio; } ;
struct drm_device {TYPE_2__* dev; struct msm_drm_private* dev_private; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 struct mdp5_mdss* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (TYPE_2__*,char*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mdp5_mdss*) ; 
 int /*<<< orphan*/  mdss_funcs ; 
 int /*<<< orphan*/  mdss_irq ; 
 int FUNC7 (struct mdp5_mdss*) ; 
 void* FUNC8 (struct platform_device*,char*,char*) ; 
 int FUNC9 (struct mdp5_mdss*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int FUNC14 (void*) ; 
 struct platform_device* FUNC15 (TYPE_2__*) ; 

int FUNC16(struct drm_device *dev)
{
	struct platform_device *pdev = FUNC15(dev->dev);
	struct msm_drm_private *priv = dev->dev_private;
	struct mdp5_mdss *mdp5_mdss;
	int ret;

	FUNC0("");

	if (!FUNC10(dev->dev->of_node, "qcom,mdss"))
		return 0;

	mdp5_mdss = FUNC4(dev->dev, sizeof(*mdp5_mdss), GFP_KERNEL);
	if (!mdp5_mdss) {
		ret = -ENOMEM;
		goto fail;
	}

	mdp5_mdss->base.dev = dev;

	mdp5_mdss->mmio = FUNC8(pdev, "mdss_phys", "MDSS");
	if (FUNC2(mdp5_mdss->mmio)) {
		ret = FUNC3(mdp5_mdss->mmio);
		goto fail;
	}

	mdp5_mdss->vbif = FUNC8(pdev, "vbif_phys", "VBIF");
	if (FUNC2(mdp5_mdss->vbif)) {
		ret = FUNC3(mdp5_mdss->vbif);
		goto fail;
	}

	ret = FUNC9(mdp5_mdss);
	if (ret) {
		FUNC1(dev->dev, "failed to get clocks: %d\n", ret);
		goto fail;
	}

	/* Regulator to enable GDSCs in downstream kernels */
	mdp5_mdss->vdd = FUNC5(dev->dev, "vdd");
	if (FUNC2(mdp5_mdss->vdd)) {
		ret = FUNC3(mdp5_mdss->vdd);
		goto fail;
	}

	ret = FUNC14(mdp5_mdss->vdd);
	if (ret) {
		FUNC1(dev->dev, "failed to enable regulator vdd: %d\n",
			ret);
		goto fail;
	}

	ret = FUNC6(dev->dev, FUNC11(pdev, 0),
			       mdss_irq, 0, "mdss_isr", mdp5_mdss);
	if (ret) {
		FUNC1(dev->dev, "failed to init irq: %d\n", ret);
		goto fail_irq;
	}

	ret = FUNC7(mdp5_mdss);
	if (ret) {
		FUNC1(dev->dev, "failed to init sub-block irqs: %d\n", ret);
		goto fail_irq;
	}

	mdp5_mdss->base.funcs = &mdss_funcs;
	priv->mdss = &mdp5_mdss->base;

	FUNC12(dev->dev);

	return 0;
fail_irq:
	FUNC13(mdp5_mdss->vdd);
fail:
	return ret;
}