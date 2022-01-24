#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mcde {int /*<<< orphan*/  bridge; int /*<<< orphan*/  pipe; scalar_t__ te_sync; } ;
struct drm_mode_config {int min_width; int max_width; int min_height; int max_height; int /*<<< orphan*/ * helper_private; int /*<<< orphan*/ * funcs; } ;
struct drm_device {int /*<<< orphan*/  dev; struct drm_mode_config mode_config; struct mcde* dev_private; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct drm_device*,int) ; 
 int FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  mcde_mode_config_funcs ; 
 int /*<<< orphan*/  mcde_mode_config_helpers ; 

__attribute__((used)) static int FUNC8(struct drm_device *drm)
{
	struct drm_mode_config *mode_config;
	struct mcde *mcde = drm->dev_private;
	int ret;

	if (!mcde->bridge) {
		FUNC0(drm->dev, "no display output bridge yet\n");
		return -EPROBE_DEFER;
	}

	mode_config = &drm->mode_config;
	mode_config->funcs = &mcde_mode_config_funcs;
	mode_config->helper_private = &mcde_mode_config_helpers;
	/* This hardware can do 1080p */
	mode_config->min_width = 1;
	mode_config->max_width = 1920;
	mode_config->min_height = 1;
	mode_config->max_height = 1080;

	/*
	 * Currently we only support vblank handling on the DSI bridge, using
	 * TE synchronization. If TE sync is not set up, it is still possible
	 * to push out a single update on demand, but this is hard for DRM to
	 * exploit.
	 */
	if (mcde->te_sync) {
		ret = FUNC6(drm, 1);
		if (ret) {
			FUNC0(drm->dev, "failed to init vblank\n");
			goto out_config;
		}
	}

	ret = FUNC7(drm);
	if (ret) {
		FUNC0(drm->dev, "failed to init display\n");
		goto out_config;
	}

	/*
	 * Attach the DSI bridge
	 *
	 * TODO: when adding support for the DPI bridge or several DSI bridges,
	 * we selectively connect the bridge(s) here instead of this simple
	 * attachment.
	 */
	ret = FUNC5(&mcde->pipe,
						    mcde->bridge);
	if (ret) {
		FUNC0(drm->dev, "failed to attach display output bridge\n");
		goto out_config;
	}

	FUNC4(drm);
	FUNC2(drm);
	FUNC1(drm, 32);

	return 0;

out_config:
	FUNC3(drm);
	return ret;
}