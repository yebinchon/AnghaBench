#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lvds_fp_timing {scalar_t__ x_res; scalar_t__ y_res; int lvds_reg_val; } ;
struct lvds_dvo_timing {int dummy; } ;
struct TYPE_2__ {int panel_type; int bios_lvds_val; struct drm_display_mode* lfp_lvds_vbt_mode; int /*<<< orphan*/  drrs_type; int /*<<< orphan*/  lvds_dither; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct drm_display_mode {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct bdb_lvds_options {int panel_type; int dps_panel_type_bits; int /*<<< orphan*/  pixel_dither; } ;
struct bdb_lvds_lfp_data_ptrs {int dummy; } ;
struct bdb_lvds_lfp_data {int dummy; } ;
struct bdb_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDB_LVDS_LFP_DATA ; 
 int /*<<< orphan*/  BDB_LVDS_LFP_DATA_PTRS ; 
 int /*<<< orphan*/  BDB_LVDS_OPTIONS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DRRS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MODE_MASK ; 
 int /*<<< orphan*/  SEAMLESS_DRRS_SUPPORT ; 
 int /*<<< orphan*/  STATIC_DRRS_SUPPORT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_display_mode*,struct lvds_dvo_timing const*) ; 
 void* FUNC4 (struct bdb_header const*,int /*<<< orphan*/ ) ; 
 struct lvds_dvo_timing* FUNC5 (struct bdb_lvds_lfp_data const*,struct bdb_lvds_lfp_data_ptrs const*,int) ; 
 struct lvds_fp_timing* FUNC6 (struct bdb_header const*,struct bdb_lvds_lfp_data const*,struct bdb_lvds_lfp_data_ptrs const*,int) ; 
 int FUNC7 (struct drm_i915_private*) ; 
 struct drm_display_mode* FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct drm_i915_private *dev_priv,
		     const struct bdb_header *bdb)
{
	const struct bdb_lvds_options *lvds_options;
	const struct bdb_lvds_lfp_data *lvds_lfp_data;
	const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs;
	const struct lvds_dvo_timing *panel_dvo_timing;
	const struct lvds_fp_timing *fp_timing;
	struct drm_display_mode *panel_fixed_mode;
	int panel_type;
	int drrs_mode;
	int ret;

	lvds_options = FUNC4(bdb, BDB_LVDS_OPTIONS);
	if (!lvds_options)
		return;

	dev_priv->vbt.lvds_dither = lvds_options->pixel_dither;

	ret = FUNC7(dev_priv);
	if (ret >= 0) {
		FUNC1(ret > 0xf);
		panel_type = ret;
		FUNC0("Panel type: %d (OpRegion)\n", panel_type);
	} else {
		if (lvds_options->panel_type > 0xf) {
			FUNC0("Invalid VBT panel type 0x%x\n",
				      lvds_options->panel_type);
			return;
		}
		panel_type = lvds_options->panel_type;
		FUNC0("Panel type: %d (VBT)\n", panel_type);
	}

	dev_priv->vbt.panel_type = panel_type;

	drrs_mode = (lvds_options->dps_panel_type_bits
				>> (panel_type * 2)) & MODE_MASK;
	/*
	 * VBT has static DRRS = 0 and seamless DRRS = 2.
	 * The below piece of code is required to adjust vbt.drrs_type
	 * to match the enum drrs_support_type.
	 */
	switch (drrs_mode) {
	case 0:
		dev_priv->vbt.drrs_type = STATIC_DRRS_SUPPORT;
		FUNC0("DRRS supported mode is static\n");
		break;
	case 2:
		dev_priv->vbt.drrs_type = SEAMLESS_DRRS_SUPPORT;
		FUNC0("DRRS supported mode is seamless\n");
		break;
	default:
		dev_priv->vbt.drrs_type = DRRS_NOT_SUPPORTED;
		FUNC0("DRRS not supported (VBT input)\n");
		break;
	}

	lvds_lfp_data = FUNC4(bdb, BDB_LVDS_LFP_DATA);
	if (!lvds_lfp_data)
		return;

	lvds_lfp_data_ptrs = FUNC4(bdb, BDB_LVDS_LFP_DATA_PTRS);
	if (!lvds_lfp_data_ptrs)
		return;

	panel_dvo_timing = FUNC5(lvds_lfp_data,
					       lvds_lfp_data_ptrs,
					       panel_type);

	panel_fixed_mode = FUNC8(sizeof(*panel_fixed_mode), GFP_KERNEL);
	if (!panel_fixed_mode)
		return;

	FUNC3(panel_fixed_mode, panel_dvo_timing);

	dev_priv->vbt.lfp_lvds_vbt_mode = panel_fixed_mode;

	FUNC0("Found panel mode in BIOS VBT tables:\n");
	FUNC2(panel_fixed_mode);

	fp_timing = FUNC6(bdb, lvds_lfp_data,
				       lvds_lfp_data_ptrs,
				       panel_type);
	if (fp_timing) {
		/* check the resolution, just to be sure */
		if (fp_timing->x_res == panel_fixed_mode->hdisplay &&
		    fp_timing->y_res == panel_fixed_mode->vdisplay) {
			dev_priv->vbt.bios_lvds_val = fp_timing->lvds_reg_val;
			FUNC0("VBT initial LVDS value %x\n",
				      dev_priv->vbt.bios_lvds_val);
		}
	}
}