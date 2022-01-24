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
typedef  scalar_t__ uint32_t ;
typedef  int u32 ;
struct vmw_private {scalar_t__ active_display_unit; int /*<<< orphan*/  stdu_max_height; int /*<<< orphan*/  stdu_max_width; int /*<<< orphan*/  texture_max_height; int /*<<< orphan*/  texture_max_width; scalar_t__ assume_16bpp; } ;
struct vmw_display_unit {int pref_width; scalar_t__ pref_height; struct drm_display_mode* pref_mode; } ;
struct drm_display_mode {int hdisplay; scalar_t__ vdisplay; scalar_t__ type; int /*<<< orphan*/  vrefresh; int /*<<< orphan*/  head; int /*<<< orphan*/  member_0; } ;
struct drm_device {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  modes; struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int DRM_MODE_FLAG_NHSYNC ; 
 int DRM_MODE_FLAG_PVSYNC ; 
 int DRM_MODE_TYPE_DRIVER ; 
 int DRM_MODE_TYPE_PREFERRED ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_display_mode*) ; 
 struct drm_display_mode* FUNC3 (struct drm_device*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct vmw_display_unit* FUNC9 (struct drm_connector*) ; 
 scalar_t__ vmw_du_screen_target ; 
 int /*<<< orphan*/  FUNC10 (struct drm_display_mode*) ; 
 struct drm_display_mode* vmw_kms_connector_builtin ; 
 scalar_t__ FUNC11 (struct vmw_private*,int,scalar_t__) ; 
 struct vmw_private* FUNC12 (struct drm_device*) ; 

int FUNC13(struct drm_connector *connector,
				uint32_t max_width, uint32_t max_height)
{
	struct vmw_display_unit *du = FUNC9(connector);
	struct drm_device *dev = connector->dev;
	struct vmw_private *dev_priv = FUNC12(dev);
	struct drm_display_mode *mode = NULL;
	struct drm_display_mode *bmode;
	struct drm_display_mode prefmode = { FUNC0("preferred",
		DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC)
	};
	int i;
	u32 assumed_bpp = 4;

	if (dev_priv->assume_16bpp)
		assumed_bpp = 2;

	max_width  = FUNC8(max_width,  dev_priv->texture_max_width);
	max_height = FUNC8(max_height, dev_priv->texture_max_height);

	/*
	 * For STDU extra limit for a mode on SVGA_REG_SCREENTARGET_MAX_WIDTH/
	 * HEIGHT registers.
	 */
	if (dev_priv->active_display_unit == vmw_du_screen_target) {
		max_width  = FUNC8(max_width,  dev_priv->stdu_max_width);
		max_height = FUNC8(max_height, dev_priv->stdu_max_height);
	}

	/* Add preferred mode */
	mode = FUNC3(dev, &prefmode);
	if (!mode)
		return 0;
	mode->hdisplay = du->pref_width;
	mode->vdisplay = du->pref_height;
	FUNC10(mode);

	if (FUNC11(dev_priv,
					mode->hdisplay * assumed_bpp,
					mode->vdisplay)) {
		FUNC4(connector, mode);
	} else {
		FUNC2(dev, mode);
		mode = NULL;
	}

	if (du->pref_mode) {
		FUNC7(&du->pref_mode->head);
		FUNC2(dev, du->pref_mode);
	}

	/* mode might be null here, this is intended */
	du->pref_mode = mode;

	for (i = 0; vmw_kms_connector_builtin[i].type != 0; i++) {
		bmode = &vmw_kms_connector_builtin[i];
		if (bmode->hdisplay > max_width ||
		    bmode->vdisplay > max_height)
			continue;

		if (!FUNC11(dev_priv,
						bmode->hdisplay * assumed_bpp,
						bmode->vdisplay))
			continue;

		mode = FUNC3(dev, bmode);
		if (!mode)
			return 0;
		mode->vrefresh = FUNC6(mode);

		FUNC4(connector, mode);
	}

	FUNC1(connector);
	/* Move the prefered mode first, help apps pick the right mode. */
	FUNC5(&connector->modes);

	return 1;
}