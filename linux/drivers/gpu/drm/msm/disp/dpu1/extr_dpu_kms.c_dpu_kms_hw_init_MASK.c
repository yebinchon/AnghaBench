#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct msm_kms {int dummy; } ;
struct msm_drm_private {int dummy; } ;
struct TYPE_26__ {int max_width; int max_height; int allow_fb_modifiers; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {TYPE_3__ mode_config; struct msm_drm_private* dev_private; } ;
struct dpu_kms {int rm_init; TYPE_5__* pdev; int /*<<< orphan*/  perf; TYPE_4__* catalog; TYPE_4__* hw_intr; TYPE_4__* mmio; TYPE_4__** hw_vbif; TYPE_4__** vbif; TYPE_4__* hw_mdp; int /*<<< orphan*/  rm; int /*<<< orphan*/  core_rev; void* reg_dma_len; TYPE_4__* reg_dma; void** vbif_len; void* mmio_len; int /*<<< orphan*/  bandwidth_ref; struct drm_device* dev; } ;
struct TYPE_28__ {int /*<<< orphan*/  dev; } ;
struct TYPE_27__ {int vbif_count; TYPE_2__* caps; TYPE_1__* vbif; } ;
struct TYPE_25__ {int max_mixer_width; } ;
struct TYPE_24__ {size_t id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_4__*) ; 
 int EINVAL ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  MDP_TOP ; 
 int FUNC5 (TYPE_4__*) ; 
 size_t VBIF_NRT ; 
 size_t VBIF_RT ; 
 int FUNC6 (struct dpu_kms*) ; 
 int /*<<< orphan*/  FUNC7 (struct dpu_kms*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct dpu_kms*) ; 
 int FUNC9 (struct dpu_kms*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct drm_device*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC14 (TYPE_4__*,TYPE_4__*) ; 
 TYPE_4__* FUNC15 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__*) ; 
 TYPE_4__* FUNC16 (size_t,TYPE_4__*,TYPE_4__*) ; 
 void* FUNC17 (TYPE_5__*,char*) ; 
 int FUNC18 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (struct dpu_kms*) ; 
 void* FUNC20 (TYPE_5__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*) ; 
 struct dpu_kms* FUNC25 (struct msm_kms*) ; 

__attribute__((used)) static int FUNC26(struct msm_kms *kms)
{
	struct dpu_kms *dpu_kms;
	struct drm_device *dev;
	struct msm_drm_private *priv;
	int i, rc = -EINVAL;

	if (!kms) {
		FUNC1("invalid kms\n");
		return rc;
	}

	dpu_kms = FUNC25(kms);
	dev = dpu_kms->dev;
	if (!dev) {
		FUNC1("invalid device\n");
		return rc;
	}

	priv = dev->dev_private;
	if (!priv) {
		FUNC1("invalid private data\n");
		return rc;
	}

	FUNC10(&dpu_kms->bandwidth_ref, 0);

	dpu_kms->mmio = FUNC20(dpu_kms->pdev, "mdp", "mdp");
	if (FUNC3(dpu_kms->mmio)) {
		rc = FUNC5(dpu_kms->mmio);
		FUNC1("mdp register memory map failed: %d\n", rc);
		dpu_kms->mmio = NULL;
		goto error;
	}
	FUNC2("mapped dpu address space @%pK\n", dpu_kms->mmio);
	dpu_kms->mmio_len = FUNC17(dpu_kms->pdev, "mdp");

	dpu_kms->vbif[VBIF_RT] = FUNC20(dpu_kms->pdev, "vbif", "vbif");
	if (FUNC3(dpu_kms->vbif[VBIF_RT])) {
		rc = FUNC5(dpu_kms->vbif[VBIF_RT]);
		FUNC1("vbif register memory map failed: %d\n", rc);
		dpu_kms->vbif[VBIF_RT] = NULL;
		goto error;
	}
	dpu_kms->vbif_len[VBIF_RT] = FUNC17(dpu_kms->pdev, "vbif");
	dpu_kms->vbif[VBIF_NRT] = FUNC20(dpu_kms->pdev, "vbif_nrt", "vbif_nrt");
	if (FUNC3(dpu_kms->vbif[VBIF_NRT])) {
		dpu_kms->vbif[VBIF_NRT] = NULL;
		FUNC0("VBIF NRT is not defined");
	} else {
		dpu_kms->vbif_len[VBIF_NRT] = FUNC17(dpu_kms->pdev,
							     "vbif_nrt");
	}

	dpu_kms->reg_dma = FUNC20(dpu_kms->pdev, "regdma", "regdma");
	if (FUNC3(dpu_kms->reg_dma)) {
		dpu_kms->reg_dma = NULL;
		FUNC0("REG_DMA is not defined");
	} else {
		dpu_kms->reg_dma_len = FUNC17(dpu_kms->pdev, "regdma");
	}

	FUNC21(&dpu_kms->pdev->dev);

	dpu_kms->core_rev = FUNC24(dpu_kms->mmio + 0x0);

	FUNC23("dpu hardware revision:0x%x\n", dpu_kms->core_rev);

	dpu_kms->catalog = FUNC13(dpu_kms->core_rev);
	if (FUNC4(dpu_kms->catalog)) {
		rc = FUNC5(dpu_kms->catalog);
		if (!dpu_kms->catalog)
			rc = -EINVAL;
		FUNC1("catalog init failed: %d\n", rc);
		dpu_kms->catalog = NULL;
		goto power_error;
	}

	/*
	 * Now we need to read the HW catalog and initialize resources such as
	 * clocks, regulators, GDSC/MMAGIC, ioremap the register ranges etc
	 */
	rc = FUNC9(dpu_kms);
	if (rc) {
		FUNC1("dpu_kms_mmu_init failed: %d\n", rc);
		goto power_error;
	}

	rc = FUNC18(&dpu_kms->rm, dpu_kms->catalog, dpu_kms->mmio);
	if (rc) {
		FUNC1("rm init failed: %d\n", rc);
		goto power_error;
	}

	dpu_kms->rm_init = true;

	dpu_kms->hw_mdp = FUNC15(MDP_TOP, dpu_kms->mmio,
					     dpu_kms->catalog);
	if (FUNC3(dpu_kms->hw_mdp)) {
		rc = FUNC5(dpu_kms->hw_mdp);
		FUNC1("failed to get hw_mdp: %d\n", rc);
		dpu_kms->hw_mdp = NULL;
		goto power_error;
	}

	for (i = 0; i < dpu_kms->catalog->vbif_count; i++) {
		u32 vbif_idx = dpu_kms->catalog->vbif[i].id;

		dpu_kms->hw_vbif[i] = FUNC16(vbif_idx,
				dpu_kms->vbif[vbif_idx], dpu_kms->catalog);
		if (FUNC4(dpu_kms->hw_vbif[vbif_idx])) {
			rc = FUNC5(dpu_kms->hw_vbif[vbif_idx]);
			if (!dpu_kms->hw_vbif[vbif_idx])
				rc = -EINVAL;
			FUNC1("failed to init vbif %d: %d\n", vbif_idx, rc);
			dpu_kms->hw_vbif[vbif_idx] = NULL;
			goto power_error;
		}
	}

	rc = FUNC12(&dpu_kms->perf, dev, dpu_kms->catalog,
			FUNC7(dpu_kms, "core"));
	if (rc) {
		FUNC1("failed to init perf %d\n", rc);
		goto perf_err;
	}

	dpu_kms->hw_intr = FUNC14(dpu_kms->mmio, dpu_kms->catalog);
	if (FUNC4(dpu_kms->hw_intr)) {
		rc = FUNC5(dpu_kms->hw_intr);
		FUNC1("hw_intr init failed: %d\n", rc);
		dpu_kms->hw_intr = NULL;
		goto hw_intr_init_err;
	}

	dev->mode_config.min_width = 0;
	dev->mode_config.min_height = 0;

	/*
	 * max crtc width is equal to the max mixer width * 2 and max height is
	 * is 4K
	 */
	dev->mode_config.max_width =
			dpu_kms->catalog->caps->max_mixer_width * 2;
	dev->mode_config.max_height = 4096;

	/*
	 * Support format modifiers for compression etc.
	 */
	dev->mode_config.allow_fb_modifiers = true;

	/*
	 * _dpu_kms_drm_obj_init should create the DRM related objects
	 * i.e. CRTCs, planes, encoders, connectors and so forth
	 */
	rc = FUNC6(dpu_kms);
	if (rc) {
		FUNC1("modeset init failed: %d\n", rc);
		goto drm_obj_init_err;
	}

	FUNC19(dpu_kms);

	FUNC22(&dpu_kms->pdev->dev);

	return 0;

drm_obj_init_err:
	FUNC11(&dpu_kms->perf);
hw_intr_init_err:
perf_err:
power_error:
	FUNC22(&dpu_kms->pdev->dev);
error:
	FUNC8(dpu_kms);

	return rc;
}