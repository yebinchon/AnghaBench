#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct msm_drm_private {int /*<<< orphan*/ * kms; } ;
struct TYPE_6__ {int /*<<< orphan*/  base; } ;
struct mdp5_kms {int rpm_enabled; int caps; TYPE_3__ base; int /*<<< orphan*/ * ctlm; int /*<<< orphan*/ * cfg; int /*<<< orphan*/ * mmio; int /*<<< orphan*/ * smp; int /*<<< orphan*/  core_clk; int /*<<< orphan*/  lut_clk; int /*<<< orphan*/  vsync_clk; int /*<<< orphan*/  ahb_clk; int /*<<< orphan*/  axi_clk; struct platform_device* pdev; struct drm_device* dev; int /*<<< orphan*/  resource_lock; } ;
struct mdp5_cfg {TYPE_2__* hw; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct TYPE_4__ {int caps; } ;
struct TYPE_5__ {int max_clk; int /*<<< orphan*/  smp; TYPE_1__ mdp; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int MDP_CAP_SMP ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct mdp5_kms* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct platform_device*,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (struct mdp5_kms*) ; 
 int FUNC6 (struct mdp5_kms*) ; 
 int FUNC7 (struct mdp5_kms*) ; 
 struct mdp5_cfg* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (struct mdp5_kms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 
 int FUNC12 (struct mdp5_kms*) ; 
 int /*<<< orphan*/ * FUNC13 (struct mdp5_kms*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (struct platform_device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct mdp5_kms*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct mdp5_kms*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev, struct drm_device *dev)
{
	struct msm_drm_private *priv = dev->dev_private;
	struct mdp5_kms *mdp5_kms;
	struct mdp5_cfg *config;
	u32 major, minor;
	int ret;

	mdp5_kms = FUNC3(&pdev->dev, sizeof(*mdp5_kms), GFP_KERNEL);
	if (!mdp5_kms) {
		ret = -ENOMEM;
		goto fail;
	}

	FUNC15(pdev, mdp5_kms);

	FUNC18(&mdp5_kms->resource_lock);

	mdp5_kms->dev = dev;
	mdp5_kms->pdev = pdev;

	ret = FUNC12(mdp5_kms);
	if (ret)
		goto fail;

	mdp5_kms->mmio = FUNC14(pdev, "mdp_phys", "MDP5");
	if (FUNC0(mdp5_kms->mmio)) {
		ret = FUNC1(mdp5_kms->mmio);
		goto fail;
	}

	/* mandatory clocks: */
	ret = FUNC4(pdev, &mdp5_kms->axi_clk, "bus", true);
	if (ret)
		goto fail;
	ret = FUNC4(pdev, &mdp5_kms->ahb_clk, "iface", true);
	if (ret)
		goto fail;
	ret = FUNC4(pdev, &mdp5_kms->core_clk, "core", true);
	if (ret)
		goto fail;
	ret = FUNC4(pdev, &mdp5_kms->vsync_clk, "vsync", true);
	if (ret)
		goto fail;

	/* optional clocks: */
	FUNC4(pdev, &mdp5_kms->lut_clk, "lut", false);

	/* we need to set a default rate before enabling.  Set a safe
	 * rate first, then figure out hw revision, and then set a
	 * more optimal rate:
	 */
	FUNC2(mdp5_kms->core_clk, 200000000);

	FUNC16(&pdev->dev);
	mdp5_kms->rpm_enabled = true;

	FUNC17(mdp5_kms, &major, &minor);

	mdp5_kms->cfg = FUNC9(mdp5_kms, major, minor);
	if (FUNC0(mdp5_kms->cfg)) {
		ret = FUNC1(mdp5_kms->cfg);
		mdp5_kms->cfg = NULL;
		goto fail;
	}

	config = FUNC8(mdp5_kms->cfg);
	mdp5_kms->caps = config->hw->mdp.caps;

	/* TODO: compute core clock rate at runtime */
	FUNC2(mdp5_kms->core_clk, config->hw->max_clk);

	/*
	 * Some chipsets have a Shared Memory Pool (SMP), while others
	 * have dedicated latency buffering per source pipe instead;
	 * this section initializes the SMP:
	 */
	if (mdp5_kms->caps & MDP_CAP_SMP) {
		mdp5_kms->smp = FUNC13(mdp5_kms, &config->hw->smp);
		if (FUNC0(mdp5_kms->smp)) {
			ret = FUNC1(mdp5_kms->smp);
			mdp5_kms->smp = NULL;
			goto fail;
		}
	}

	mdp5_kms->ctlm = FUNC10(dev, mdp5_kms->mmio, mdp5_kms->cfg);
	if (FUNC0(mdp5_kms->ctlm)) {
		ret = FUNC1(mdp5_kms->ctlm);
		mdp5_kms->ctlm = NULL;
		goto fail;
	}

	ret = FUNC6(mdp5_kms);
	if (ret)
		goto fail;

	ret = FUNC5(mdp5_kms);
	if (ret)
		goto fail;

	ret = FUNC7(mdp5_kms);
	if (ret)
		goto fail;

	/* set uninit-ed kms */
	priv->kms = &mdp5_kms->base.base;

	return 0;
fail:
	FUNC11(pdev);
	return ret;
}