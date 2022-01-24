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
struct drm_plane {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  base; int /*<<< orphan*/  status; } ;
struct drm_encoder {int possible_crtcs; scalar_t__ possible_clones; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_3__ {unsigned int unit; int pref_active; int is_implicit; struct drm_plane cursor; struct drm_plane primary; int /*<<< orphan*/  pref_height; int /*<<< orphan*/  pref_width; struct drm_connector connector; struct drm_encoder encoder; struct drm_crtc crtc; } ;
struct vmw_screen_target_display_unit {TYPE_1__ base; } ;
struct vmw_private {int /*<<< orphan*/  hotplug_mode_update_property; int /*<<< orphan*/  initial_height; int /*<<< orphan*/  initial_width; struct drm_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  suggested_y_property; int /*<<< orphan*/  suggested_x_property; } ;
struct drm_device {TYPE_2__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_VIRTUAL ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_VIRTUAL ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_CURSOR ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_PRIMARY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct drm_device*,struct drm_crtc*,struct drm_plane*,struct drm_plane*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_encoder*) ; 
 int FUNC11 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_crtc*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct drm_device*,struct drm_plane*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct vmw_screen_target_display_unit*) ; 
 struct vmw_screen_target_display_unit* FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmw_cursor_plane_formats ; 
 int /*<<< orphan*/  FUNC20 (struct drm_connector*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC22 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC23 (struct drm_plane*) ; 
 int /*<<< orphan*/  vmw_primary_plane_formats ; 
 int /*<<< orphan*/  vmw_stdu_connector_funcs ; 
 int /*<<< orphan*/  vmw_stdu_connector_helper_funcs ; 
 int /*<<< orphan*/  vmw_stdu_crtc_funcs ; 
 int /*<<< orphan*/  vmw_stdu_crtc_helper_funcs ; 
 int /*<<< orphan*/  vmw_stdu_cursor_funcs ; 
 int /*<<< orphan*/  vmw_stdu_cursor_plane_helper_funcs ; 
 int /*<<< orphan*/  vmw_stdu_encoder_funcs ; 
 int /*<<< orphan*/  vmw_stdu_plane_funcs ; 
 int /*<<< orphan*/  vmw_stdu_primary_plane_helper_funcs ; 

__attribute__((used)) static int FUNC24(struct vmw_private *dev_priv, unsigned unit)
{
	struct vmw_screen_target_display_unit *stdu;
	struct drm_device *dev = dev_priv->dev;
	struct drm_connector *connector;
	struct drm_encoder *encoder;
	struct drm_plane *primary, *cursor;
	struct drm_crtc *crtc;
	int    ret;


	stdu = FUNC19(sizeof(*stdu), GFP_KERNEL);
	if (!stdu)
		return -ENOMEM;

	stdu->base.unit = unit;
	crtc = &stdu->base.crtc;
	encoder = &stdu->base.encoder;
	connector = &stdu->base.connector;
	primary = &stdu->base.primary;
	cursor = &stdu->base.cursor;

	stdu->base.pref_active = (unit == 0);
	stdu->base.pref_width  = dev_priv->initial_width;
	stdu->base.pref_height = dev_priv->initial_height;
	stdu->base.is_implicit = false;

	/* Initialize primary plane */
	FUNC23(primary);

	ret = FUNC17(dev, primary,
				       0, &vmw_stdu_plane_funcs,
				       vmw_primary_plane_formats,
				       FUNC0(vmw_primary_plane_formats),
				       NULL, DRM_PLANE_TYPE_PRIMARY, NULL);
	if (ret) {
		FUNC1("Failed to initialize primary plane");
		goto err_free;
	}

	FUNC16(primary, &vmw_stdu_primary_plane_helper_funcs);
	FUNC15(primary);

	/* Initialize cursor plane */
	FUNC23(cursor);

	ret = FUNC17(dev, cursor,
			0, &vmw_stdu_cursor_funcs,
			vmw_cursor_plane_formats,
			FUNC0(vmw_cursor_plane_formats),
			NULL, DRM_PLANE_TYPE_CURSOR, NULL);
	if (ret) {
		FUNC1("Failed to initialize cursor plane");
		FUNC14(&stdu->base.primary);
		goto err_free;
	}

	FUNC16(cursor, &vmw_stdu_cursor_plane_helper_funcs);

	FUNC21(connector);

	ret = FUNC5(dev, connector, &vmw_stdu_connector_funcs,
				 DRM_MODE_CONNECTOR_VIRTUAL);
	if (ret) {
		FUNC1("Failed to initialize connector\n");
		goto err_free;
	}

	FUNC4(connector, &vmw_stdu_connector_helper_funcs);
	connector->status = FUNC20(connector, false);

	ret = FUNC11(dev, encoder, &vmw_stdu_encoder_funcs,
			       DRM_MODE_ENCODER_VIRTUAL, NULL);
	if (ret) {
		FUNC1("Failed to initialize encoder\n");
		goto err_free_connector;
	}

	(void) FUNC2(connector, encoder);
	encoder->possible_crtcs = (1 << unit);
	encoder->possible_clones = 0;

	ret = FUNC6(connector);
	if (ret) {
		FUNC1("Failed to register connector\n");
		goto err_free_encoder;
	}

	FUNC22(crtc);
	ret = FUNC9(dev, crtc, &stdu->base.primary,
					&stdu->base.cursor,
					&vmw_stdu_crtc_funcs, NULL);
	if (ret) {
		FUNC1("Failed to initialize CRTC\n");
		goto err_free_unregister;
	}

	FUNC8(crtc, &vmw_stdu_crtc_helper_funcs);

	FUNC12(crtc, 256);

	FUNC13(&connector->base,
				   dev_priv->hotplug_mode_update_property, 1);
	FUNC13(&connector->base,
				   dev->mode_config.suggested_x_property, 0);
	FUNC13(&connector->base,
				   dev->mode_config.suggested_y_property, 0);
	return 0;

err_free_unregister:
	FUNC7(connector);
err_free_encoder:
	FUNC10(encoder);
err_free_connector:
	FUNC3(connector);
err_free:
	FUNC18(stdu);
	return ret;
}