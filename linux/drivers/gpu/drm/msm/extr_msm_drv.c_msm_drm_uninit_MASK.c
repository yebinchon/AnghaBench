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
struct platform_device {int dummy; } ;
struct msm_mdss {TYPE_4__* funcs; } ;
struct msm_kms {TYPE_2__* funcs; } ;
struct TYPE_7__ {scalar_t__ paddr; int /*<<< orphan*/  size; int /*<<< orphan*/  mm; } ;
struct msm_drm_private {int num_crtcs; int /*<<< orphan*/  wq; TYPE_3__ vram; scalar_t__ fbdev; TYPE_1__* event_thread; struct msm_mdss* mdss; struct msm_kms* kms; } ;
struct drm_device {struct msm_drm_private* dev_private; scalar_t__ registered; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* destroy ) (struct drm_device*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  (* destroy ) (struct msm_kms*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/ * thread; int /*<<< orphan*/  worker; } ;

/* Variables and functions */
 unsigned long DMA_ATTR_NO_KERNEL_MAPPING ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 scalar_t__ fbdev ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct msm_drm_private*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct msm_drm_private*) ; 
 int /*<<< orphan*/  FUNC16 (struct msm_drm_private*) ; 
 struct drm_device* FUNC17 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct msm_kms*) ; 
 int /*<<< orphan*/  FUNC21 (struct drm_device*) ; 
 struct platform_device* FUNC22 (struct device*) ; 

__attribute__((used)) static int FUNC23(struct device *dev)
{
	struct platform_device *pdev = FUNC22(dev);
	struct drm_device *ddev = FUNC17(pdev);
	struct msm_drm_private *priv = ddev->dev_private;
	struct msm_kms *kms = priv->kms;
	struct msm_mdss *mdss = priv->mdss;
	int i;

	/*
	 * Shutdown the hw if we're far enough along where things might be on.
	 * If we run this too early, we'll end up panicking in any variety of
	 * places. Since we don't register the drm device until late in
	 * msm_drm_init, drm_dev->registered is used as an indicator that the
	 * shutdown will be successful.
	 */
	if (ddev->registered) {
		FUNC5(ddev);
		FUNC3(ddev);
	}

	/* We must cancel and cleanup any pending vblank enable/disable
	 * work before drm_irq_uninstall() to avoid work re-enabling an
	 * irq after uninstall has disabled it.
	 */

	FUNC10(priv->wq);

	/* clean up event worker threads */
	for (i = 0; i < priv->num_crtcs; i++) {
		if (priv->event_thread[i].thread) {
			FUNC12(&priv->event_thread[i].worker);
			priv->event_thread[i].thread = NULL;
		}
	}

	FUNC14(ddev);

	FUNC7(ddev);

	FUNC15(priv);
	FUNC16(priv);

#ifdef CONFIG_DRM_FBDEV_EMULATION
	if (fbdev && priv->fbdev)
		msm_fbdev_free(ddev);
#endif

	FUNC9(ddev);

	FUNC18(dev);
	FUNC6(ddev);
	FUNC19(dev);

	if (kms && kms->funcs)
		kms->funcs->destroy(kms);

	if (priv->vram.paddr) {
		unsigned long attrs = DMA_ATTR_NO_KERNEL_MAPPING;
		FUNC8(&priv->vram.mm);
		FUNC2(dev, priv->vram.size, NULL,
			       priv->vram.paddr, attrs);
	}

	FUNC0(dev, ddev);

	if (mdss && mdss->funcs)
		mdss->funcs->destroy(ddev);

	ddev->dev_private = NULL;
	FUNC4(ddev);

	FUNC1(priv->wq);
	FUNC11(priv);

	return 0;
}