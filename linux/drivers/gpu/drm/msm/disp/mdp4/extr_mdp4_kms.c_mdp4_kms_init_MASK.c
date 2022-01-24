#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct msm_kms {int irq; struct msm_gem_address_space* aspace; } ;
struct msm_gem_address_space {TYPE_3__* mmu; } ;
struct mdp4_platform_config {scalar_t__ iommu; int /*<<< orphan*/  max_clk; } ;
struct TYPE_8__ {struct msm_kms base; } ;
struct mdp4_kms {int rev; int rpm_enabled; int /*<<< orphan*/  blank_cursor_iova; struct msm_gem_address_space* blank_cursor_bo; struct msm_gem_address_space* lut_clk; struct msm_gem_address_space* clk; struct msm_gem_address_space* axi_clk; struct msm_gem_address_space* pclk; struct msm_gem_address_space* vdd; struct msm_gem_address_space* mmio; struct drm_device* dev; TYPE_4__ base; } ;
struct TYPE_6__ {int max_width; int max_height; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {TYPE_2__ mode_config; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {TYPE_1__* funcs; } ;
struct TYPE_5__ {int (* attach ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int ENOMEM ; 
 struct msm_kms* FUNC3 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC4 (struct msm_gem_address_space*) ; 
 int MSM_BO_SCANOUT ; 
 int MSM_BO_WC ; 
 int FUNC5 (struct msm_gem_address_space*) ; 
 int /*<<< orphan*/  REG_MDP4_DSI_ENABLE ; 
 int /*<<< orphan*/  REG_MDP4_DTV_ENABLE ; 
 int /*<<< orphan*/  REG_MDP4_LCDC_ENABLE ; 
 int /*<<< orphan*/  SZ_16K ; 
 int /*<<< orphan*/  FUNC6 (struct msm_gem_address_space*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 struct msm_gem_address_space* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  iommu_ports ; 
 int /*<<< orphan*/  kms_funcs ; 
 struct mdp4_kms* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct msm_kms*) ; 
 int /*<<< orphan*/  FUNC12 (struct mdp4_kms*) ; 
 int /*<<< orphan*/  FUNC13 (struct mdp4_kms*) ; 
 struct mdp4_platform_config* FUNC14 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct mdp4_kms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct mdp4_kms*) ; 
 struct msm_gem_address_space* FUNC18 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int FUNC19 (struct msm_gem_address_space*,struct msm_gem_address_space*,int /*<<< orphan*/ *) ; 
 struct msm_gem_address_space* FUNC20 (struct drm_device*,int /*<<< orphan*/ ,int) ; 
 struct msm_gem_address_space* FUNC21 (struct platform_device*,int /*<<< orphan*/ *,char*) ; 
 int FUNC22 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (struct msm_gem_address_space*) ; 
 int FUNC25 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC26 (int /*<<< orphan*/ ) ; 

struct msm_kms *FUNC27(struct drm_device *dev)
{
	struct platform_device *pdev = FUNC26(dev->dev);
	struct mdp4_platform_config *config = FUNC14(pdev);
	struct mdp4_kms *mdp4_kms;
	struct msm_kms *kms = NULL;
	struct msm_gem_address_space *aspace;
	int irq, ret;

	mdp4_kms = FUNC9(sizeof(*mdp4_kms), GFP_KERNEL);
	if (!mdp4_kms) {
		FUNC1(dev->dev, "failed to allocate kms\n");
		ret = -ENOMEM;
		goto fail;
	}

	FUNC16(&mdp4_kms->base, &kms_funcs);

	kms = &mdp4_kms->base.base;

	mdp4_kms->dev = dev;

	mdp4_kms->mmio = FUNC21(pdev, NULL, "MDP4");
	if (FUNC4(mdp4_kms->mmio)) {
		ret = FUNC5(mdp4_kms->mmio);
		goto fail;
	}

	irq = FUNC22(pdev, 0);
	if (irq < 0) {
		ret = irq;
		FUNC1(dev->dev, "failed to get irq: %d\n", ret);
		goto fail;
	}

	kms->irq = irq;

	/* NOTE: driver for this regulator still missing upstream.. use
	 * _get_exclusive() and ignore the error if it does not exist
	 * (and hope that the bootloader left it on for us)
	 */
	mdp4_kms->vdd = FUNC8(&pdev->dev, "vdd");
	if (FUNC4(mdp4_kms->vdd))
		mdp4_kms->vdd = NULL;

	if (mdp4_kms->vdd) {
		ret = FUNC24(mdp4_kms->vdd);
		if (ret) {
			FUNC1(dev->dev, "failed to enable regulator vdd: %d\n", ret);
			goto fail;
		}
	}

	mdp4_kms->clk = FUNC7(&pdev->dev, "core_clk");
	if (FUNC4(mdp4_kms->clk)) {
		FUNC1(dev->dev, "failed to get core_clk\n");
		ret = FUNC5(mdp4_kms->clk);
		goto fail;
	}

	mdp4_kms->pclk = FUNC7(&pdev->dev, "iface_clk");
	if (FUNC4(mdp4_kms->pclk))
		mdp4_kms->pclk = NULL;

	if (mdp4_kms->rev >= 2) {
		mdp4_kms->lut_clk = FUNC7(&pdev->dev, "lut_clk");
		if (FUNC4(mdp4_kms->lut_clk)) {
			FUNC1(dev->dev, "failed to get lut_clk\n");
			ret = FUNC5(mdp4_kms->lut_clk);
			goto fail;
		}
	}

	mdp4_kms->axi_clk = FUNC7(&pdev->dev, "bus_clk");
	if (FUNC4(mdp4_kms->axi_clk)) {
		FUNC1(dev->dev, "failed to get axi_clk\n");
		ret = FUNC5(mdp4_kms->axi_clk);
		goto fail;
	}

	FUNC6(mdp4_kms->clk, config->max_clk);
	if (mdp4_kms->lut_clk)
		FUNC6(mdp4_kms->lut_clk, config->max_clk);

	FUNC23(dev->dev);
	mdp4_kms->rpm_enabled = true;

	/* make sure things are off before attaching iommu (bootloader could
	 * have left things on, in which case we'll start getting faults if
	 * we don't disable):
	 */
	FUNC13(mdp4_kms);
	FUNC15(mdp4_kms, REG_MDP4_DTV_ENABLE, 0);
	FUNC15(mdp4_kms, REG_MDP4_LCDC_ENABLE, 0);
	FUNC15(mdp4_kms, REG_MDP4_DSI_ENABLE, 0);
	FUNC12(mdp4_kms);
	FUNC10(16);

	if (config->iommu) {
		aspace = FUNC18(&pdev->dev,
				config->iommu, "mdp4");
		if (FUNC4(aspace)) {
			ret = FUNC5(aspace);
			goto fail;
		}

		kms->aspace = aspace;

		ret = aspace->mmu->funcs->attach(aspace->mmu, iommu_ports,
				FUNC0(iommu_ports));
		if (ret)
			goto fail;
	} else {
		FUNC2(dev->dev, "no iommu, fallback to phys "
				"contig buffers for scanout\n");
		aspace = NULL;
	}

	ret = FUNC17(mdp4_kms);
	if (ret) {
		FUNC1(dev->dev, "modeset_init failed: %d\n", ret);
		goto fail;
	}

	mdp4_kms->blank_cursor_bo = FUNC20(dev, SZ_16K, MSM_BO_WC | MSM_BO_SCANOUT);
	if (FUNC4(mdp4_kms->blank_cursor_bo)) {
		ret = FUNC5(mdp4_kms->blank_cursor_bo);
		FUNC1(dev->dev, "could not allocate blank-cursor bo: %d\n", ret);
		mdp4_kms->blank_cursor_bo = NULL;
		goto fail;
	}

	ret = FUNC19(mdp4_kms->blank_cursor_bo, kms->aspace,
			&mdp4_kms->blank_cursor_iova);
	if (ret) {
		FUNC1(dev->dev, "could not pin blank-cursor bo: %d\n", ret);
		goto fail;
	}

	dev->mode_config.min_width = 0;
	dev->mode_config.min_height = 0;
	dev->mode_config.max_width = 2048;
	dev->mode_config.max_height = 2048;

	return kms;

fail:
	if (kms)
		FUNC11(kms);
	return FUNC3(ret);
}