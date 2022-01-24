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
struct mipi_pps_data {int rotation; } ;
struct mipi_config {int rotation; } ;
struct TYPE_3__ {int /*<<< orphan*/  panel_id; int /*<<< orphan*/  orientation; void* config; void* pps; } ;
struct TYPE_4__ {int panel_type; TYPE_1__ dsi; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
struct bdb_mipi_config {struct mipi_pps_data* pps; struct mipi_pps_data* config; } ;
struct bdb_header {int /*<<< orphan*/  version; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  BDB_MIPI_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP ; 
 int /*<<< orphan*/  DRM_MODE_PANEL_ORIENTATION_LEFT_UP ; 
 int /*<<< orphan*/  DRM_MODE_PANEL_ORIENTATION_RIGHT_UP ; 
 int /*<<< orphan*/  DRM_MODE_PANEL_ORIENTATION_UNKNOWN ; 
#define  ENABLE_ROTATION_0 131 
#define  ENABLE_ROTATION_180 130 
#define  ENABLE_ROTATION_270 129 
#define  ENABLE_ROTATION_90 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MIPI_DSI_GENERIC_PANEL_ID ; 
 int /*<<< orphan*/  MIPI_DSI_UNDEFINED_PANEL_ID ; 
 struct bdb_mipi_config* FUNC2 (struct bdb_header const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (struct mipi_pps_data const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct drm_i915_private *dev_priv,
		  const struct bdb_header *bdb)
{
	const struct bdb_mipi_config *start;
	const struct mipi_config *config;
	const struct mipi_pps_data *pps;
	int panel_type = dev_priv->vbt.panel_type;
	enum port port;

	/* parse MIPI blocks only if LFP type is MIPI */
	if (!FUNC3(dev_priv, &port))
		return;

	/* Initialize this to undefined indicating no generic MIPI support */
	dev_priv->vbt.dsi.panel_id = MIPI_DSI_UNDEFINED_PANEL_ID;

	/* Block #40 is already parsed and panel_fixed_mode is
	 * stored in dev_priv->lfp_lvds_vbt_mode
	 * resuse this when needed
	 */

	/* Parse #52 for panel index used from panel_type already
	 * parsed
	 */
	start = FUNC2(bdb, BDB_MIPI_CONFIG);
	if (!start) {
		FUNC1("No MIPI config BDB found");
		return;
	}

	FUNC0("Found MIPI Config block, panel index = %d\n",
								panel_type);

	/*
	 * get hold of the correct configuration block and pps data as per
	 * the panel_type as index
	 */
	config = &start->config[panel_type];
	pps = &start->pps[panel_type];

	/* store as of now full data. Trim when we realise all is not needed */
	dev_priv->vbt.dsi.config = FUNC5(config, sizeof(struct mipi_config), GFP_KERNEL);
	if (!dev_priv->vbt.dsi.config)
		return;

	dev_priv->vbt.dsi.pps = FUNC5(pps, sizeof(struct mipi_pps_data), GFP_KERNEL);
	if (!dev_priv->vbt.dsi.pps) {
		FUNC4(dev_priv->vbt.dsi.config);
		return;
	}

	FUNC6(dev_priv, bdb->version, port);

	/* FIXME is the 90 vs. 270 correct? */
	switch (config->rotation) {
	case ENABLE_ROTATION_0:
		/*
		 * Most (all?) VBTs claim 0 degrees despite having
		 * an upside down panel, thus we do not trust this.
		 */
		dev_priv->vbt.dsi.orientation =
			DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
		break;
	case ENABLE_ROTATION_90:
		dev_priv->vbt.dsi.orientation =
			DRM_MODE_PANEL_ORIENTATION_RIGHT_UP;
		break;
	case ENABLE_ROTATION_180:
		dev_priv->vbt.dsi.orientation =
			DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP;
		break;
	case ENABLE_ROTATION_270:
		dev_priv->vbt.dsi.orientation =
			DRM_MODE_PANEL_ORIENTATION_LEFT_UP;
		break;
	}

	/* We have mandatory mipi config blocks. Initialize as generic panel */
	dev_priv->vbt.dsi.panel_id = MIPI_DSI_GENERIC_PANEL_ID;
}