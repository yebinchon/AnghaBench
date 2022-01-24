#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sun4i_drv {int /*<<< orphan*/  tcon_list; int /*<<< orphan*/  engine_list; int /*<<< orphan*/  frontend_list; } ;
struct TYPE_2__ {int allow_fb_modifiers; int /*<<< orphan*/  num_crtc; } ;
struct drm_device {int irq_enabled; TYPE_1__ mode_config; int /*<<< orphan*/  dev; struct sun4i_drv* dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct drm_device*) ; 
 struct sun4i_drv* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC7 (int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int FUNC9 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*) ; 
 int FUNC16 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  sun4i_drv_driver ; 
 int /*<<< orphan*/  FUNC19 (struct drm_device*) ; 

__attribute__((used)) static int FUNC20(struct device *dev)
{
	struct drm_device *drm;
	struct sun4i_drv *drv;
	int ret;

	drm = FUNC7(&sun4i_drv_driver, dev);
	if (FUNC1(drm))
		return FUNC2(drm);

	drv = FUNC6(dev, sizeof(*drv), GFP_KERNEL);
	if (!drv) {
		ret = -ENOMEM;
		goto free_drm;
	}

	FUNC5(dev, drm);
	drm->dev_private = drv;
	FUNC0(&drv->frontend_list);
	FUNC0(&drv->engine_list);
	FUNC0(&drv->tcon_list);

	ret = FUNC17(dev);
	if (ret && ret != -ENODEV) {
		FUNC4(drm->dev, "Couldn't claim our memory region\n");
		goto free_drm;
	}

	FUNC15(drm);
	drm->mode_config.allow_fb_modifiers = true;

	ret = FUNC3(drm->dev, drm);
	if (ret) {
		FUNC4(drm->dev, "Couldn't bind all pipelines components\n");
		goto cleanup_mode_config;
	}

	/* drm_vblank_init calls kcalloc, which can fail */
	ret = FUNC16(drm, drm->mode_config.num_crtc);
	if (ret)
		goto cleanup_mode_config;

	drm->irq_enabled = true;

	/* Remove early framebuffers (ie. simplefb) */
	FUNC10(NULL, "sun4i-drm-fb", false);

	FUNC19(drm);

	/* Enable connectors polling */
	FUNC13(drm);

	ret = FUNC9(drm, 0);
	if (ret)
		goto finish_poll;

	FUNC11(drm, 32);

	return 0;

finish_poll:
	FUNC12(drm);
cleanup_mode_config:
	FUNC14(drm);
	FUNC18(dev);
free_drm:
	FUNC8(drm);
	return ret;
}