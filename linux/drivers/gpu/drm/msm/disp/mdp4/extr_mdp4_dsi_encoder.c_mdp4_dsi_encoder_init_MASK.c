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
struct drm_encoder {int dummy; } ;
struct mdp4_dsi_encoder {struct drm_encoder base; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ENCODER_DSI ; 
 int ENOMEM ; 
 struct drm_encoder* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mdp4_dsi_encoder* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*) ; 
 int /*<<< orphan*/  mdp4_dsi_encoder_funcs ; 
 int /*<<< orphan*/  mdp4_dsi_encoder_helper_funcs ; 

struct drm_encoder *FUNC5(struct drm_device *dev)
{
	struct drm_encoder *encoder = NULL;
	struct mdp4_dsi_encoder *mdp4_dsi_encoder;
	int ret;

	mdp4_dsi_encoder = FUNC3(sizeof(*mdp4_dsi_encoder), GFP_KERNEL);
	if (!mdp4_dsi_encoder) {
		ret = -ENOMEM;
		goto fail;
	}

	encoder = &mdp4_dsi_encoder->base;

	FUNC2(dev, encoder, &mdp4_dsi_encoder_funcs,
			 DRM_MODE_ENCODER_DSI, NULL);
	FUNC1(encoder, &mdp4_dsi_encoder_helper_funcs);

	return encoder;

fail:
	if (encoder)
		FUNC4(encoder);

	return FUNC0(ret);
}