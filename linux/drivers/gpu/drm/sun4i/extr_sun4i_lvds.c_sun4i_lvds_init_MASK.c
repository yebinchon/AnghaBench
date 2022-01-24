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
struct sun4i_lvds {struct drm_encoder encoder; int /*<<< orphan*/  connector; scalar_t__ panel; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  crtc; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_LVDS ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_LVDS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct sun4i_lvds* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_encoder*,struct drm_bridge*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__*,struct drm_bridge**) ; 
 int FUNC12 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sun4i_lvds_con_funcs ; 
 int /*<<< orphan*/  sun4i_lvds_con_helper_funcs ; 
 int /*<<< orphan*/  sun4i_lvds_enc_funcs ; 
 int /*<<< orphan*/  sun4i_lvds_enc_helper_funcs ; 

int FUNC13(struct drm_device *drm, struct sun4i_tcon *tcon)
{
	struct drm_encoder *encoder;
	struct drm_bridge *bridge;
	struct sun4i_lvds *lvds;
	int ret;

	lvds = FUNC2(drm->dev, sizeof(*lvds), GFP_KERNEL);
	if (!lvds)
		return -ENOMEM;
	encoder = &lvds->encoder;

	ret = FUNC11(tcon->dev->of_node, 1, 0,
					  &lvds->panel, &bridge);
	if (ret) {
		FUNC1(drm->dev, "No panel or bridge found... LVDS output disabled\n");
		return 0;
	}

	FUNC9(&lvds->encoder,
			       &sun4i_lvds_enc_helper_funcs);
	ret = FUNC10(drm,
			       &lvds->encoder,
			       &sun4i_lvds_enc_funcs,
			       DRM_MODE_ENCODER_LVDS,
			       NULL);
	if (ret) {
		FUNC0(drm->dev, "Couldn't initialise the lvds encoder\n");
		goto err_out;
	}

	/* The LVDS encoder can only work with the TCON channel 0 */
	lvds->encoder.possible_crtcs = FUNC7(&tcon->crtc->crtc);

	if (lvds->panel) {
		FUNC5(&lvds->connector,
					 &sun4i_lvds_con_helper_funcs);
		ret = FUNC6(drm, &lvds->connector,
					 &sun4i_lvds_con_funcs,
					 DRM_MODE_CONNECTOR_LVDS);
		if (ret) {
			FUNC0(drm->dev, "Couldn't initialise the lvds connector\n");
			goto err_cleanup_connector;
		}

		FUNC4(&lvds->connector,
						  &lvds->encoder);

		ret = FUNC12(lvds->panel, &lvds->connector);
		if (ret) {
			FUNC0(drm->dev, "Couldn't attach our panel\n");
			goto err_cleanup_connector;
		}
	}

	if (bridge) {
		ret = FUNC3(encoder, bridge, NULL);
		if (ret) {
			FUNC0(drm->dev, "Couldn't attach our bridge\n");
			goto err_cleanup_connector;
		}
	}

	return 0;

err_cleanup_connector:
	FUNC8(&lvds->encoder);
err_out:
	return ret;
}