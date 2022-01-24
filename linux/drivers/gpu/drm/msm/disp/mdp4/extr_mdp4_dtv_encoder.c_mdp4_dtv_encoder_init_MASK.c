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
struct mdp4_dtv_encoder {void* mdp_clk; void* hdmi_clk; struct drm_encoder base; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int ENOMEM ; 
 struct drm_encoder* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct mdp4_dtv_encoder*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mdp4_dtv_encoder* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_encoder*) ; 
 int /*<<< orphan*/  mdp4_dtv_encoder_funcs ; 
 int /*<<< orphan*/  mdp4_dtv_encoder_helper_funcs ; 

struct drm_encoder *FUNC10(struct drm_device *dev)
{
	struct drm_encoder *encoder = NULL;
	struct mdp4_dtv_encoder *mdp4_dtv_encoder;
	int ret;

	mdp4_dtv_encoder = FUNC8(sizeof(*mdp4_dtv_encoder), GFP_KERNEL);
	if (!mdp4_dtv_encoder) {
		ret = -ENOMEM;
		goto fail;
	}

	encoder = &mdp4_dtv_encoder->base;

	FUNC7(dev, encoder, &mdp4_dtv_encoder_funcs,
			 DRM_MODE_ENCODER_TMDS, NULL);
	FUNC6(encoder, &mdp4_dtv_encoder_helper_funcs);

	mdp4_dtv_encoder->hdmi_clk = FUNC5(dev->dev, "hdmi_clk");
	if (FUNC2(mdp4_dtv_encoder->hdmi_clk)) {
		FUNC0(dev->dev, "failed to get hdmi_clk\n");
		ret = FUNC3(mdp4_dtv_encoder->hdmi_clk);
		goto fail;
	}

	mdp4_dtv_encoder->mdp_clk = FUNC5(dev->dev, "tv_clk");
	if (FUNC2(mdp4_dtv_encoder->mdp_clk)) {
		FUNC0(dev->dev, "failed to get tv_clk\n");
		ret = FUNC3(mdp4_dtv_encoder->mdp_clk);
		goto fail;
	}

	FUNC4(mdp4_dtv_encoder);

	return encoder;

fail:
	if (encoder)
		FUNC9(encoder);

	return FUNC1(ret);
}