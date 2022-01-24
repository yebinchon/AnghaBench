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
struct resource {int dummy; } ;
struct platform_device {TYPE_1__* id_entry; int /*<<< orphan*/  dev; } ;
struct mxsfb_drm_private {int /*<<< orphan*/  panel; int /*<<< orphan*/  connector; int /*<<< orphan*/  pipe; int /*<<< orphan*/ * clk_disp_axi; int /*<<< orphan*/ * clk_axi; int /*<<< orphan*/ * clk; int /*<<< orphan*/ * base; int /*<<< orphan*/ * devdata; } ;
struct TYPE_4__ {int /*<<< orphan*/ * helper_private; int /*<<< orphan*/ * funcs; int /*<<< orphan*/  max_height; int /*<<< orphan*/  max_width; int /*<<< orphan*/  min_height; int /*<<< orphan*/  min_width; int /*<<< orphan*/  num_crtc; } ;
struct drm_device {int /*<<< orphan*/  dev; TYPE_2__ mode_config; struct mxsfb_drm_private* dev_private; } ;
struct TYPE_3__ {size_t driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MXSFB_MAX_XRES ; 
 int /*<<< orphan*/  MXSFB_MAX_YRES ; 
 int /*<<< orphan*/  MXSFB_MIN_XRES ; 
 int /*<<< orphan*/  MXSFB_MIN_YRES ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,struct resource*) ; 
 struct mxsfb_drm_private* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int FUNC10 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct drm_device*) ; 
 int /*<<< orphan*/ * mxsfb_devdata ; 
 int /*<<< orphan*/  mxsfb_formats ; 
 int /*<<< orphan*/  mxsfb_funcs ; 
 int /*<<< orphan*/  mxsfb_mode_config_funcs ; 
 int /*<<< orphan*/  mxsfb_mode_config_helpers ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct drm_device *drm, unsigned long flags)
{
	struct platform_device *pdev = FUNC26(drm->dev);
	struct mxsfb_drm_private *mxsfb;
	struct resource *res;
	int ret;

	mxsfb = FUNC7(&pdev->dev, sizeof(*mxsfb), GFP_KERNEL);
	if (!mxsfb)
		return -ENOMEM;

	drm->dev_private = mxsfb;
	mxsfb->devdata = &mxsfb_devdata[pdev->id_entry->driver_data];

	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	mxsfb->base = FUNC6(drm->dev, res);
	if (FUNC2(mxsfb->base))
		return FUNC3(mxsfb->base);

	mxsfb->clk = FUNC5(drm->dev, NULL);
	if (FUNC2(mxsfb->clk))
		return FUNC3(mxsfb->clk);

	mxsfb->clk_axi = FUNC5(drm->dev, "axi");
	if (FUNC2(mxsfb->clk_axi))
		mxsfb->clk_axi = NULL;

	mxsfb->clk_disp_axi = FUNC5(drm->dev, "disp_axi");
	if (FUNC2(mxsfb->clk_disp_axi))
		mxsfb->clk_disp_axi = NULL;

	ret = FUNC8(drm->dev, FUNC1(32));
	if (ret)
		return ret;

	FUNC23(drm->dev);

	ret = FUNC17(drm, drm->mode_config.num_crtc);
	if (ret < 0) {
		FUNC4(drm->dev, "Failed to initialise vblank\n");
		goto err_vblank;
	}

	/* Modeset init */
	FUNC12(drm);

	ret = FUNC18(drm);
	if (ret < 0) {
		FUNC4(drm->dev, "Failed to create outputs\n");
		goto err_vblank;
	}

	ret = FUNC16(drm, &mxsfb->pipe, &mxsfb_funcs,
			mxsfb_formats, FUNC0(mxsfb_formats), NULL,
			&mxsfb->connector);
	if (ret < 0) {
		FUNC4(drm->dev, "Cannot setup simple display pipe\n");
		goto err_vblank;
	}

	ret = FUNC14(mxsfb->panel, &mxsfb->connector);
	if (ret) {
		FUNC4(drm->dev, "Cannot connect panel\n");
		goto err_vblank;
	}

	drm->mode_config.min_width	= MXSFB_MIN_XRES;
	drm->mode_config.min_height	= MXSFB_MIN_YRES;
	drm->mode_config.max_width	= MXSFB_MAX_XRES;
	drm->mode_config.max_height	= MXSFB_MAX_YRES;
	drm->mode_config.funcs		= &mxsfb_mode_config_funcs;
	drm->mode_config.helper_private	= &mxsfb_mode_config_helpers;

	FUNC13(drm);

	FUNC24(drm->dev);
	ret = FUNC10(drm, FUNC19(pdev, 0));
	FUNC25(drm->dev);

	if (ret < 0) {
		FUNC4(drm->dev, "Failed to install IRQ handler\n");
		goto err_irq;
	}

	FUNC11(drm);

	FUNC21(pdev, drm);

	FUNC9(drm);

	return 0;

err_irq:
	FUNC15(mxsfb->panel);
err_vblank:
	FUNC22(drm->dev);

	return ret;
}