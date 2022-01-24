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
struct imx_ldb_channel {int /*<<< orphan*/  mode; scalar_t__ mode_valid; scalar_t__ edid; scalar_t__ ddc; int /*<<< orphan*/  panel; } ;
struct drm_display_mode {int type; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DRM_MODE_TYPE_DRIVER ; 
 int DRM_MODE_TYPE_PREFERRED ; 
 int EINVAL ; 
 struct imx_ldb_channel* FUNC0 (struct drm_connector*) ; 
 int FUNC1 (struct drm_connector*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct drm_connector*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_display_mode*,int /*<<< orphan*/ *) ; 
 struct drm_display_mode* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*,struct drm_display_mode*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct drm_connector *connector)
{
	struct imx_ldb_channel *imx_ldb_ch = FUNC0(connector);
	int num_modes;

	num_modes = FUNC7(imx_ldb_ch->panel);
	if (num_modes > 0)
		return num_modes;

	if (!imx_ldb_ch->edid && imx_ldb_ch->ddc)
		imx_ldb_ch->edid = FUNC3(connector, imx_ldb_ch->ddc);

	if (imx_ldb_ch->edid) {
		FUNC2(connector,
							imx_ldb_ch->edid);
		num_modes = FUNC1(connector, imx_ldb_ch->edid);
	}

	if (imx_ldb_ch->mode_valid) {
		struct drm_display_mode *mode;

		mode = FUNC5(connector->dev);
		if (!mode)
			return -EINVAL;
		FUNC4(mode, &imx_ldb_ch->mode);
		mode->type |= DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
		FUNC6(connector, mode);
		num_modes++;
	}

	return num_modes;
}