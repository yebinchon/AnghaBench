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
typedef  int u32 ;
struct edid {int features; } ;
struct TYPE_4__ {int bpc; } ;
struct drm_connector {TYPE_2__ display_info; int /*<<< orphan*/  name; TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DRM_EDID_FEATURE_DEFAULT_GTF ; 
 int EDID_QUIRK_FORCE_10BPC ; 
 int EDID_QUIRK_FORCE_12BPC ; 
 int EDID_QUIRK_FORCE_6BPC ; 
 int EDID_QUIRK_FORCE_8BPC ; 
 int EDID_QUIRK_PREFER_LARGE_60 ; 
 int EDID_QUIRK_PREFER_LARGE_75 ; 
 scalar_t__ FUNC0 (struct drm_connector*,struct edid*) ; 
 scalar_t__ FUNC1 (struct drm_connector*,struct edid*) ; 
 scalar_t__ FUNC2 (struct drm_connector*,struct edid*) ; 
 scalar_t__ FUNC3 (struct drm_connector*,struct edid*,int) ; 
 scalar_t__ FUNC4 (struct drm_connector*,struct edid*) ; 
 scalar_t__ FUNC5 (struct drm_connector*,struct edid*) ; 
 scalar_t__ FUNC6 (struct drm_connector*,struct edid*) ; 
 scalar_t__ FUNC7 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC11 (struct edid*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_connector*,int) ; 

int FUNC14(struct drm_connector *connector, struct edid *edid)
{
	int num_modes = 0;
	u32 quirks;

	if (edid == NULL) {
		FUNC8(connector);
		return 0;
	}
	if (!FUNC11(edid)) {
		FUNC8(connector);
		FUNC9(connector->dev->dev, "%s: EDID invalid.\n",
			 connector->name);
		return 0;
	}

	FUNC12(connector, edid);

	/*
	 * CEA-861-F adds ycbcr capability map block, for HDMI 2.0 sinks.
	 * To avoid multiple parsing of same block, lets parse that map
	 * from sink info, before parsing CEA modes.
	 */
	quirks = FUNC10(connector, edid);

	/*
	 * EDID spec says modes should be preferred in this order:
	 * - preferred detailed mode
	 * - other detailed modes from base block
	 * - detailed modes from extension blocks
	 * - CVT 3-byte code modes
	 * - standard timing codes
	 * - established timing codes
	 * - modes inferred from GTF or CVT range information
	 *
	 * We get this pretty much right.
	 *
	 * XXX order for additional mode types in extension blocks?
	 */
	num_modes += FUNC3(connector, edid, quirks);
	num_modes += FUNC2(connector, edid);
	num_modes += FUNC7(connector, edid);
	num_modes += FUNC5(connector, edid);
	num_modes += FUNC1(connector, edid);
	num_modes += FUNC0(connector, edid);
	num_modes += FUNC4(connector, edid);
	if (edid->features & DRM_EDID_FEATURE_DEFAULT_GTF)
		num_modes += FUNC6(connector, edid);

	if (quirks & (EDID_QUIRK_PREFER_LARGE_60 | EDID_QUIRK_PREFER_LARGE_75))
		FUNC13(connector, quirks);

	if (quirks & EDID_QUIRK_FORCE_6BPC)
		connector->display_info.bpc = 6;

	if (quirks & EDID_QUIRK_FORCE_8BPC)
		connector->display_info.bpc = 8;

	if (quirks & EDID_QUIRK_FORCE_10BPC)
		connector->display_info.bpc = 10;

	if (quirks & EDID_QUIRK_FORCE_12BPC)
		connector->display_info.bpc = 12;

	return num_modes;
}