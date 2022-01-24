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
struct drm_encoder {int possible_crtcs; scalar_t__ possible_clones; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_bridge {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  arcpgu_drm_encoder_funcs ; 
 struct drm_encoder* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_encoder*,struct drm_bridge*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 
 int FUNC3 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct drm_bridge* FUNC4 (struct device_node*) ; 

int FUNC5(struct drm_device *drm, struct device_node *np)
{
	struct drm_encoder *encoder;
	struct drm_bridge *bridge;

	int ret = 0;

	encoder = FUNC0(drm->dev, sizeof(*encoder), GFP_KERNEL);
	if (encoder == NULL)
		return -ENOMEM;

	/* Locate drm bridge from the hdmi encoder DT node */
	bridge = FUNC4(np);
	if (!bridge)
		return -EPROBE_DEFER;

	encoder->possible_crtcs = 1;
	encoder->possible_clones = 0;
	ret = FUNC3(drm, encoder, &arcpgu_drm_encoder_funcs,
			       DRM_MODE_ENCODER_TMDS, NULL);
	if (ret)
		return ret;

	/* Link drm_bridge to encoder */
	ret = FUNC1(encoder, bridge, NULL);
	if (ret)
		FUNC2(encoder);

	return ret;
}