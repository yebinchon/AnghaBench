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
struct TYPE_2__ {int min_width; int min_height; int max_width; int max_height; int /*<<< orphan*/  num_crtc; int /*<<< orphan*/ * funcs; } ;
struct drm_device {int irq_enabled; TYPE_1__ mode_config; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct drm_device*) ; 
 struct drm_device* FUNC6 (int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int FUNC8 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_device*) ; 
 int FUNC15 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zx_drm_driver ; 
 int /*<<< orphan*/  zx_drm_mode_config_funcs ; 

__attribute__((used)) static int FUNC16(struct device *dev)
{
	struct drm_device *drm;
	int ret;

	drm = FUNC6(&zx_drm_driver, dev);
	if (FUNC1(drm))
		return FUNC2(drm);

	FUNC5(dev, drm);

	FUNC13(drm);
	drm->mode_config.min_width = 16;
	drm->mode_config.min_height = 16;
	drm->mode_config.max_width = 4096;
	drm->mode_config.max_height = 4096;
	drm->mode_config.funcs = &zx_drm_mode_config_funcs;

	ret = FUNC3(dev, drm);
	if (ret) {
		FUNC0(dev, "failed to bind all components: %d\n", ret);
		goto out_unregister;
	}

	ret = FUNC15(drm, drm->mode_config.num_crtc);
	if (ret < 0) {
		FUNC0(dev, "failed to init vblank: %d\n", ret);
		goto out_unbind;
	}

	/*
	 * We will manage irq handler on our own.  In this case, irq_enabled
	 * need to be true for using vblank core support.
	 */
	drm->irq_enabled = true;

	FUNC14(drm);
	FUNC11(drm);

	ret = FUNC8(drm, 0);
	if (ret)
		goto out_poll_fini;

	FUNC9(drm, 32);

	return 0;

out_poll_fini:
	FUNC10(drm);
	FUNC12(drm);
out_unbind:
	FUNC4(dev, drm);
out_unregister:
	FUNC5(dev, NULL);
	FUNC7(drm);
	return ret;
}