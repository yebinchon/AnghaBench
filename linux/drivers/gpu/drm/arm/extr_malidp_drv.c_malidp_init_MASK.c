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
struct malidp_hw_device {int /*<<< orphan*/  max_line_size; int /*<<< orphan*/  min_line_size; } ;
struct malidp_drm {struct malidp_hw_device* dev; } ;
struct TYPE_2__ {int allow_fb_modifiers; int /*<<< orphan*/ * helper_private; int /*<<< orphan*/ * funcs; int /*<<< orphan*/  max_height; int /*<<< orphan*/  max_width; int /*<<< orphan*/  min_height; int /*<<< orphan*/  min_width; } ;
struct drm_device {TYPE_1__ mode_config; struct malidp_drm* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  malidp_mode_config_funcs ; 
 int /*<<< orphan*/  malidp_mode_config_helpers ; 
 int FUNC3 (struct drm_device*) ; 

__attribute__((used)) static int FUNC4(struct drm_device *drm)
{
	int ret;
	struct malidp_drm *malidp = drm->dev_private;
	struct malidp_hw_device *hwdev = malidp->dev;

	FUNC1(drm);

	drm->mode_config.min_width = hwdev->min_line_size;
	drm->mode_config.min_height = hwdev->min_line_size;
	drm->mode_config.max_width = hwdev->max_line_size;
	drm->mode_config.max_height = hwdev->max_line_size;
	drm->mode_config.funcs = &malidp_mode_config_funcs;
	drm->mode_config.helper_private = &malidp_mode_config_helpers;
	drm->mode_config.allow_fb_modifiers = true;

	ret = FUNC2(drm);
	if (ret)
		goto crtc_fail;

	ret = FUNC3(drm);
	if (ret)
		goto crtc_fail;

	return 0;

crtc_fail:
	FUNC0(drm);
	return ret;
}