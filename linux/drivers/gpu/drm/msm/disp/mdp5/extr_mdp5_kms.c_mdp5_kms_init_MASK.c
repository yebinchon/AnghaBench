#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct device {struct device* parent; int /*<<< orphan*/  iommu_fwspec; int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct msm_kms {int irq; struct msm_gem_address_space* aspace; } ;
struct msm_gem_address_space {TYPE_7__* mmu; } ;
struct msm_drm_private {struct msm_kms* kms; } ;
struct mdp5_kms {int /*<<< orphan*/  cfg; struct platform_device* pdev; int /*<<< orphan*/  base; } ;
struct TYPE_10__ {scalar_t__ iommu; } ;
struct mdp5_cfg {TYPE_3__ platform; TYPE_2__* hw; } ;
struct TYPE_12__ {int max_width; int max_height; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {int vblank_disable_immediate; scalar_t__ max_vblank_count; TYPE_6__* driver; TYPE_5__ mode_config; struct msm_drm_private* dev_private; } ;
struct TYPE_14__ {TYPE_4__* funcs; } ;
struct TYPE_13__ {int /*<<< orphan*/  get_vblank_counter; int /*<<< orphan*/  get_scanout_position; int /*<<< orphan*/  get_vblank_timestamp; } ;
struct TYPE_11__ {int (* attach ) (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {int /*<<< orphan*/ * base; int /*<<< orphan*/ * connect; } ;
struct TYPE_9__ {TYPE_1__ intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct msm_kms* FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct msm_gem_address_space*) ; 
 int MDP5_INTF_NUM_MAX ; 
 int FUNC5 (struct msm_gem_address_space*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  drm_calc_vbltimestamp_from_scanoutpos ; 
 int /*<<< orphan*/  iommu_ports ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kms_funcs ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct mdp5_cfg* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mdp5_get_scanoutpos ; 
 int /*<<< orphan*/  mdp5_get_vblank_counter ; 
 int /*<<< orphan*/  FUNC12 (struct msm_kms*) ; 
 int /*<<< orphan*/  FUNC13 (struct mdp5_kms*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct mdp5_kms*) ; 
 struct msm_gem_address_space* FUNC16 (struct device*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int FUNC19 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mdp5_kms* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct msm_kms*) ; 

struct msm_kms *FUNC22(struct drm_device *dev)
{
	struct msm_drm_private *priv = dev->dev_private;
	struct platform_device *pdev;
	struct mdp5_kms *mdp5_kms;
	struct mdp5_cfg *config;
	struct msm_kms *kms;
	struct msm_gem_address_space *aspace;
	int irq, i, ret;
	struct device *iommu_dev;

	/* priv->kms would have been populated by the MDP5 driver */
	kms = priv->kms;
	if (!kms)
		return NULL;

	mdp5_kms = FUNC20(FUNC21(kms));

	FUNC14(&mdp5_kms->base, &kms_funcs);

	pdev = mdp5_kms->pdev;

	irq = FUNC8(pdev->dev.of_node, 0);
	if (irq < 0) {
		ret = irq;
		FUNC1(&pdev->dev, "failed to get irq: %d\n", ret);
		goto fail;
	}

	kms->irq = irq;

	config = FUNC10(mdp5_kms->cfg);

	/* make sure things are off before attaching iommu (bootloader could
	 * have left things on, in which case we'll start getting faults if
	 * we don't disable):
	 */
	FUNC17(&pdev->dev);
	for (i = 0; i < MDP5_INTF_NUM_MAX; i++) {
		if (FUNC11(config->hw->intf.connect[i]) ||
		    !config->hw->intf.base[i])
			continue;
		FUNC13(mdp5_kms, FUNC7(i), 0);

		FUNC13(mdp5_kms, FUNC6(i), 0x3);
	}
	FUNC9(16);

	if (config->platform.iommu) {
		iommu_dev = &pdev->dev;
		if (!iommu_dev->iommu_fwspec)
			iommu_dev = iommu_dev->parent;

		aspace = FUNC16(iommu_dev,
				config->platform.iommu, "mdp5");
		if (FUNC4(aspace)) {
			ret = FUNC5(aspace);
			goto fail;
		}

		kms->aspace = aspace;

		ret = aspace->mmu->funcs->attach(aspace->mmu, iommu_ports,
				FUNC0(iommu_ports));
		if (ret) {
			FUNC1(&pdev->dev, "failed to attach iommu: %d\n",
				ret);
			goto fail;
		}
	} else {
		FUNC2(&pdev->dev,
			 "no iommu, fallback to phys contig buffers for scanout\n");
		aspace = NULL;
	}

	FUNC18(&pdev->dev);

	ret = FUNC15(mdp5_kms);
	if (ret) {
		FUNC1(&pdev->dev, "modeset_init failed: %d\n", ret);
		goto fail;
	}

	dev->mode_config.min_width = 0;
	dev->mode_config.min_height = 0;
	dev->mode_config.max_width = 0xffff;
	dev->mode_config.max_height = 0xffff;

	dev->driver->get_vblank_timestamp = drm_calc_vbltimestamp_from_scanoutpos;
	dev->driver->get_scanout_position = mdp5_get_scanoutpos;
	dev->driver->get_vblank_counter = mdp5_get_vblank_counter;
	dev->max_vblank_count = 0; /* max_vblank_count is set on each CRTC */
	dev->vblank_disable_immediate = true;

	return kms;
fail:
	if (kms)
		FUNC12(kms);
	return FUNC3(ret);
}