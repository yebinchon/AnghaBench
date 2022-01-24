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
struct sun4i_tcon {TYPE_2__* crtc; TYPE_1__* dev; } ;
struct drm_encoder {int /*<<< orphan*/  possible_crtcs; } ;
struct sun4i_rgb {struct drm_encoder encoder; scalar_t__ bridge; int /*<<< orphan*/  connector; scalar_t__ panel; struct sun4i_tcon* tcon; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  crtc; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_Unknown ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_NONE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct sun4i_rgb* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_encoder*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int FUNC12 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sun4i_rgb_con_funcs ; 
 int /*<<< orphan*/  sun4i_rgb_con_helper_funcs ; 
 int /*<<< orphan*/  sun4i_rgb_enc_funcs ; 
 int /*<<< orphan*/  sun4i_rgb_enc_helper_funcs ; 

int FUNC13(struct drm_device *drm, struct sun4i_tcon *tcon)
{
	struct drm_encoder *encoder;
	struct sun4i_rgb *rgb;
	int ret;

	rgb = FUNC2(drm->dev, sizeof(*rgb), GFP_KERNEL);
	if (!rgb)
		return -ENOMEM;
	rgb->tcon = tcon;
	encoder = &rgb->encoder;

	ret = FUNC11(tcon->dev->of_node, 1, 0,
					  &rgb->panel, &rgb->bridge);
	if (ret) {
		FUNC1(drm->dev, "No panel or bridge found... RGB output disabled\n");
		return 0;
	}

	FUNC9(&rgb->encoder,
			       &sun4i_rgb_enc_helper_funcs);
	ret = FUNC10(drm,
			       &rgb->encoder,
			       &sun4i_rgb_enc_funcs,
			       DRM_MODE_ENCODER_NONE,
			       NULL);
	if (ret) {
		FUNC0(drm->dev, "Couldn't initialise the rgb encoder\n");
		goto err_out;
	}

	/* The RGB encoder can only work with the TCON channel 0 */
	rgb->encoder.possible_crtcs = FUNC7(&tcon->crtc->crtc);

	if (rgb->panel) {
		FUNC5(&rgb->connector,
					 &sun4i_rgb_con_helper_funcs);
		ret = FUNC6(drm, &rgb->connector,
					 &sun4i_rgb_con_funcs,
					 DRM_MODE_CONNECTOR_Unknown);
		if (ret) {
			FUNC0(drm->dev, "Couldn't initialise the rgb connector\n");
			goto err_cleanup_connector;
		}

		FUNC4(&rgb->connector,
						  &rgb->encoder);

		ret = FUNC12(rgb->panel, &rgb->connector);
		if (ret) {
			FUNC0(drm->dev, "Couldn't attach our panel\n");
			goto err_cleanup_connector;
		}
	}

	if (rgb->bridge) {
		ret = FUNC3(encoder, rgb->bridge, NULL);
		if (ret) {
			FUNC0(drm->dev, "Couldn't attach our bridge\n");
			goto err_cleanup_connector;
		}
	}

	return 0;

err_cleanup_connector:
	FUNC8(&rgb->encoder);
err_out:
	return ret;
}