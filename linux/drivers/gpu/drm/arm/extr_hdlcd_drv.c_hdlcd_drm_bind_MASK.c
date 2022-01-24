#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * port; } ;
struct hdlcd_drm_private {TYPE_2__ crtc; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_crtc; } ;
struct drm_device {int /*<<< orphan*/  dev; TYPE_1__ mode_config; struct hdlcd_drm_private* dev_private; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct drm_device*) ; 
 struct hdlcd_drm_private* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 struct drm_device* FUNC8 (int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int FUNC10 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_device*) ; 
 int FUNC17 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hdlcd_driver ; 
 int FUNC18 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_device*) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int FUNC25 (struct device*) ; 

__attribute__((used)) static int FUNC26(struct device *dev)
{
	struct drm_device *drm;
	struct hdlcd_drm_private *hdlcd;
	int ret;

	hdlcd = FUNC6(dev, sizeof(*hdlcd), GFP_KERNEL);
	if (!hdlcd)
		return -ENOMEM;

	drm = FUNC8(&hdlcd_driver, dev);
	if (FUNC1(drm))
		return FUNC2(drm);

	drm->dev_private = hdlcd;
	FUNC5(dev, drm);

	FUNC19(drm);
	ret = FUNC18(drm, 0);
	if (ret)
		goto err_free;

	/* Set the CRTC's port so that the encoder component can find it */
	hdlcd->crtc.port = FUNC20(dev->of_node, 0);

	ret = FUNC3(dev, drm);
	if (ret) {
		FUNC0("Failed to bind all components\n");
		goto err_unload;
	}

	ret = FUNC25(dev);
	if (ret)
		goto err_pm_active;

	FUNC24(dev);

	ret = FUNC17(drm, drm->mode_config.num_crtc);
	if (ret < 0) {
		FUNC0("failed to initialise vblank\n");
		goto err_vblank;
	}

	FUNC16(drm);
	FUNC14(drm);

	ret = FUNC10(drm, 0);
	if (ret)
		goto err_register;

	FUNC11(drm, 32);

	return 0;

err_register:
	FUNC13(drm);
err_vblank:
	FUNC23(drm->dev);
err_pm_active:
	FUNC7(drm);
	FUNC4(dev, drm);
err_unload:
	FUNC21(hdlcd->crtc.port);
	hdlcd->crtc.port = NULL;
	FUNC12(drm);
	FUNC22(drm->dev);
err_free:
	FUNC15(drm);
	FUNC5(dev, NULL);
	FUNC9(drm);

	return ret;
}