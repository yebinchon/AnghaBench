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
struct TYPE_2__ {int min_width; int min_height; int max_width; int max_height; int allow_fb_modifiers; int normalize_zpos; int /*<<< orphan*/ * helper_private; int /*<<< orphan*/ * funcs; } ;
struct drm_device {int irq_enabled; int /*<<< orphan*/  dev; TYPE_1__ mode_config; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  MAX_CRTC ; 
 int FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
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
 int /*<<< orphan*/  imx_drm_driver ; 
 int /*<<< orphan*/  imx_drm_mode_config_funcs ; 
 int /*<<< orphan*/  imx_drm_mode_config_helpers ; 
 int legacyfb_depth ; 

__attribute__((used)) static int FUNC16(struct device *dev)
{
	struct drm_device *drm;
	int ret;

	drm = FUNC6(&imx_drm_driver, dev);
	if (FUNC0(drm))
		return FUNC1(drm);

	/*
	 * enable drm irq mode.
	 * - with irq_enabled = true, we can use the vblank feature.
	 *
	 * P.S. note that we wouldn't use drm irq handler but
	 *      just specific driver own one instead because
	 *      drm framework supports only one irq handler and
	 *      drivers can well take care of their interrupts
	 */
	drm->irq_enabled = true;

	/*
	 * set max width and height as default value(4096x4096).
	 * this value would be used to check framebuffer size limitation
	 * at drm_mode_addfb().
	 */
	drm->mode_config.min_width = 1;
	drm->mode_config.min_height = 1;
	drm->mode_config.max_width = 4096;
	drm->mode_config.max_height = 4096;
	drm->mode_config.funcs = &imx_drm_mode_config_funcs;
	drm->mode_config.helper_private = &imx_drm_mode_config_helpers;
	drm->mode_config.allow_fb_modifiers = true;
	drm->mode_config.normalize_zpos = true;

	FUNC13(drm);

	ret = FUNC15(drm, MAX_CRTC);
	if (ret)
		goto err_kms;

	FUNC4(dev, drm);

	/* Now try and bind all our sub-components */
	ret = FUNC2(dev, drm);
	if (ret)
		goto err_kms;

	FUNC14(drm);

	/*
	 * All components are now initialised, so setup the fb helper.
	 * The fb helper takes copies of key hardware information, so the
	 * crtcs/connectors/encoders must not change after this point.
	 */
	if (legacyfb_depth != 16 && legacyfb_depth != 32) {
		FUNC5(dev, "Invalid legacyfb_depth.  Defaulting to 16bpp\n");
		legacyfb_depth = 16;
	}

	FUNC11(drm);

	ret = FUNC8(drm, 0);
	if (ret)
		goto err_poll_fini;

	FUNC9(drm, legacyfb_depth);

	return 0;

err_poll_fini:
	FUNC10(drm);
	FUNC3(drm->dev, drm);
err_kms:
	FUNC12(drm);
	FUNC7(drm);

	return ret;
}