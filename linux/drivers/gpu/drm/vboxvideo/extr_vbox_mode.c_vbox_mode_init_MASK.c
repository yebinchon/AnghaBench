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
struct TYPE_2__ {int preferred_depth; int /*<<< orphan*/  max_height; int /*<<< orphan*/  max_width; scalar_t__ min_height; scalar_t__ min_width; void* funcs; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct vbox_private {unsigned int num_crtcs; struct drm_device ddev; } ;
struct vbox_crtc {int dummy; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct vbox_crtc*) ; 
 int FUNC1 (struct vbox_crtc*) ; 
 int /*<<< orphan*/  VBE_DISPI_MAX_XRES ; 
 int /*<<< orphan*/  VBE_DISPI_MAX_YRES ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_device*,struct vbox_crtc*,struct drm_encoder*) ; 
 struct vbox_crtc* FUNC6 (struct drm_device*,unsigned int) ; 
 struct drm_encoder* FUNC7 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  vbox_mode_funcs ; 

int FUNC8(struct vbox_private *vbox)
{
	struct drm_device *dev = &vbox->ddev;
	struct drm_encoder *encoder;
	struct vbox_crtc *vbox_crtc;
	unsigned int i;
	int ret;

	FUNC3(dev);

	dev->mode_config.funcs = (void *)&vbox_mode_funcs;
	dev->mode_config.min_width = 0;
	dev->mode_config.min_height = 0;
	dev->mode_config.preferred_depth = 24;
	dev->mode_config.max_width = VBE_DISPI_MAX_XRES;
	dev->mode_config.max_height = VBE_DISPI_MAX_YRES;

	for (i = 0; i < vbox->num_crtcs; ++i) {
		vbox_crtc = FUNC6(dev, i);
		if (FUNC0(vbox_crtc)) {
			ret = FUNC1(vbox_crtc);
			goto err_drm_mode_cleanup;
		}
		encoder = FUNC7(dev, i);
		if (!encoder) {
			ret = -ENOMEM;
			goto err_drm_mode_cleanup;
		}
		ret = FUNC5(dev, vbox_crtc, encoder);
		if (ret)
			goto err_drm_mode_cleanup;
	}

	FUNC4(dev);
	return 0;

err_drm_mode_cleanup:
	FUNC2(dev);
	return ret;
}