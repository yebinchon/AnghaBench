#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sched_param {int sched_priority; } ;
struct platform_device {int dummy; } ;
struct msm_mdss {TYPE_6__* funcs; } ;
struct TYPE_8__ {int normalize_zpos; int /*<<< orphan*/ * helper_private; int /*<<< orphan*/ * funcs; } ;
struct msm_kms {int /*<<< orphan*/  irq; TYPE_2__ mode_config; TYPE_1__* funcs; struct msm_kms* dev; struct msm_drm_private* dev_private; } ;
struct msm_drm_private {int num_crtcs; int /*<<< orphan*/  fbdev; TYPE_5__* event_thread; TYPE_4__** crtcs; struct msm_kms* kms; int /*<<< orphan*/  inactive_list; int /*<<< orphan*/  free_list; int /*<<< orphan*/  free_work; int /*<<< orphan*/  wq; struct msm_mdss* mdss; struct msm_kms* dev; } ;
struct drm_driver {int dummy; } ;
struct drm_device {int /*<<< orphan*/  irq; TYPE_2__ mode_config; TYPE_1__* funcs; struct drm_device* dev; struct msm_drm_private* dev_private; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* destroy ) (struct msm_kms*) ;} ;
struct TYPE_11__ {struct msm_kms* thread; int /*<<< orphan*/  crtc_id; int /*<<< orphan*/  worker; struct msm_kms* dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  id; } ;
struct TYPE_10__ {TYPE_3__ base; } ;
struct TYPE_7__ {int (* hw_init ) (struct msm_kms*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct msm_kms*) ; 
#define  KMS_DPU 130 
#define  KMS_MDP4 129 
#define  KMS_MDP5 128 
 int FUNC4 (struct msm_kms*) ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,struct msm_kms*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int) ; 
 struct msm_kms* FUNC9 (struct msm_kms*) ; 
 int FUNC10 (struct msm_kms*) ; 
 struct msm_kms* FUNC11 (struct drm_driver*,struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct msm_kms*) ; 
 int FUNC13 (struct msm_kms*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct msm_kms*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct msm_kms*) ; 
 int /*<<< orphan*/  FUNC16 (struct msm_kms*) ; 
 int /*<<< orphan*/  FUNC17 (struct msm_kms*) ; 
 int FUNC18 (struct msm_kms*,int) ; 
 scalar_t__ fbdev ; 
 int FUNC19 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct msm_drm_private*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 struct msm_kms* FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kthread_worker_fn ; 
 struct msm_drm_private* FUNC24 (int,int /*<<< orphan*/ ) ; 
 struct msm_kms* FUNC25 (struct msm_kms*) ; 
 struct msm_kms* FUNC26 (struct msm_kms*) ; 
 int FUNC27 (struct msm_kms*) ; 
 int /*<<< orphan*/  mode_config_funcs ; 
 int /*<<< orphan*/  mode_config_helper_funcs ; 
 int FUNC28 (struct msm_kms*) ; 
 int /*<<< orphan*/  FUNC29 (struct device*) ; 
 int /*<<< orphan*/  FUNC30 (struct msm_kms*) ; 
 int /*<<< orphan*/  msm_gem_free_work ; 
 int /*<<< orphan*/  FUNC31 (struct msm_kms*) ; 
 int FUNC32 (struct msm_kms*) ; 
 int /*<<< orphan*/  FUNC33 (struct platform_device*,struct msm_kms*) ; 
 int /*<<< orphan*/  FUNC34 (struct device*) ; 
 int /*<<< orphan*/  FUNC35 (struct device*) ; 
 int FUNC36 (struct msm_kms*,int /*<<< orphan*/ ,struct sched_param*) ; 
 int FUNC37 (struct msm_kms*) ; 
 int /*<<< orphan*/  FUNC38 (struct msm_kms*) ; 
 struct platform_device* FUNC39 (struct device*) ; 

__attribute__((used)) static int FUNC40(struct device *dev, struct drm_driver *drv)
{
	struct platform_device *pdev = FUNC39(dev);
	struct drm_device *ddev;
	struct msm_drm_private *priv;
	struct msm_kms *kms;
	struct msm_mdss *mdss;
	int ret, i;
	struct sched_param param;

	ddev = FUNC11(drv, dev);
	if (FUNC3(ddev)) {
		FUNC0(dev, "failed to allocate drm_device\n");
		return FUNC4(ddev);
	}

	FUNC33(pdev, ddev);

	priv = FUNC24(sizeof(*priv), GFP_KERNEL);
	if (!priv) {
		ret = -ENOMEM;
		goto err_put_drm_dev;
	}

	ddev->dev_private = priv;
	priv->dev = ddev;

	switch (FUNC19(pdev)) {
	case KMS_MDP5:
		ret = FUNC27(ddev);
		break;
	case KMS_DPU:
		ret = FUNC10(ddev);
		break;
	default:
		ret = 0;
		break;
	}
	if (ret)
		goto err_free_priv;

	mdss = priv->mdss;

	priv->wq = FUNC6("msm", 0);

	FUNC2(&priv->free_work, msm_gem_free_work);
	FUNC20(&priv->free_list);

	FUNC1(&priv->inactive_list);

	FUNC16(ddev);

	/* Bind all our sub-components: */
	ret = FUNC7(dev, ddev);
	if (ret)
		goto err_destroy_mdss;

	ret = FUNC32(ddev);
	if (ret)
		goto err_msm_uninit;

	FUNC31(ddev);

	switch (FUNC19(pdev)) {
	case KMS_MDP4:
		kms = FUNC25(ddev);
		priv->kms = kms;
		break;
	case KMS_MDP5:
		kms = FUNC26(ddev);
		break;
	case KMS_DPU:
		kms = FUNC9(ddev);
		priv->kms = kms;
		break;
	default:
		/* valid only for the dummy headless case, where of_node=NULL */
		FUNC5(dev->of_node);
		kms = NULL;
		break;
	}

	if (FUNC3(kms)) {
		FUNC0(dev, "failed to load kms\n");
		ret = FUNC4(kms);
		priv->kms = NULL;
		goto err_msm_uninit;
	}

	/* Enable normalization of plane zpos */
	ddev->mode_config.normalize_zpos = true;

	if (kms) {
		kms->dev = ddev;
		ret = kms->funcs->hw_init(kms);
		if (ret) {
			FUNC0(dev, "kms hw init failed: %d\n", ret);
			goto err_msm_uninit;
		}
	}

	ddev->mode_config.funcs = &mode_config_funcs;
	ddev->mode_config.helper_private = &mode_config_helper_funcs;

	/**
	 * this priority was found during empiric testing to have appropriate
	 * realtime scheduling to process display updates and interact with
	 * other real time and normal priority task
	 */
	param.sched_priority = 16;
	for (i = 0; i < priv->num_crtcs; i++) {
		/* initialize event thread */
		priv->event_thread[i].crtc_id = priv->crtcs[i]->base.id;
		FUNC22(&priv->event_thread[i].worker);
		priv->event_thread[i].dev = ddev;
		priv->event_thread[i].thread =
			FUNC23(kthread_worker_fn,
				&priv->event_thread[i].worker,
				"crtc_event:%d", priv->event_thread[i].crtc_id);
		if (FUNC3(priv->event_thread[i].thread)) {
			FUNC0(dev, "failed to create crtc_event kthread\n");
			priv->event_thread[i].thread = NULL;
			goto err_msm_uninit;
		}

		ret = FUNC36(priv->event_thread[i].thread,
					 SCHED_FIFO, &param);
		if (ret)
			FUNC8(dev, "event_thread set priority failed:%d\n",
				 ret);
	}

	ret = FUNC18(ddev, priv->num_crtcs);
	if (ret < 0) {
		FUNC0(dev, "failed to initialize vblank\n");
		goto err_msm_uninit;
	}

	if (kms) {
		FUNC34(dev);
		ret = FUNC14(ddev, kms->irq);
		FUNC35(dev);
		if (ret < 0) {
			FUNC0(dev, "failed to install IRQ handler\n");
			goto err_msm_uninit;
		}
	}

	ret = FUNC13(ddev, 0);
	if (ret)
		goto err_msm_uninit;

	FUNC17(ddev);

#ifdef CONFIG_DRM_FBDEV_EMULATION
	if (kms && fbdev)
		priv->fbdev = msm_fbdev_init(ddev);
#endif

	ret = FUNC28(ddev);
	if (ret)
		goto err_msm_uninit;

	FUNC15(ddev);

	return 0;

err_msm_uninit:
	FUNC29(dev);
	return ret;
err_destroy_mdss:
	if (mdss && mdss->funcs)
		mdss->funcs->destroy(ddev);
err_free_priv:
	FUNC21(priv);
err_put_drm_dev:
	FUNC12(ddev);
	return ret;
}