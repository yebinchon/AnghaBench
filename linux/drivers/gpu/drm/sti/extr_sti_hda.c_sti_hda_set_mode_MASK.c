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
typedef  size_t u32 ;
struct sti_hda {int /*<<< orphan*/  clk_pix; int /*<<< orphan*/  clk_hddac; int /*<<< orphan*/  mode; } ;
struct drm_display_mode {int clock; } ;
struct drm_bridge {struct sti_hda* driver_private; } ;
struct TYPE_2__ {int vid_cat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
#define  VID_ED 129 
#define  VID_HD_74M 128 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 TYPE_1__* hda_supported_modes ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct drm_display_mode const*,int) ; 

__attribute__((used)) static void FUNC5(struct drm_bridge *bridge,
			     const struct drm_display_mode *mode,
			     const struct drm_display_mode *adjusted_mode)
{
	struct sti_hda *hda = bridge->driver_private;
	u32 mode_idx;
	int hddac_rate;
	int ret;

	FUNC0("\n");

	FUNC4(&hda->mode, mode, sizeof(struct drm_display_mode));

	if (!FUNC3(hda->mode, &mode_idx)) {
		FUNC1("Undefined mode\n");
		return;
	}

	switch (hda_supported_modes[mode_idx].vid_cat) {
	case VID_HD_74M:
		/* HD use alternate 2x filter */
		hddac_rate = mode->clock * 1000 * 2;
		break;
	case VID_ED:
		/* ED uses 4x filter */
		hddac_rate = mode->clock * 1000 * 4;
		break;
	default:
		FUNC1("Undefined mode\n");
		return;
	}

	/* HD DAC = 148.5Mhz or 108 Mhz */
	ret = FUNC2(hda->clk_hddac, hddac_rate);
	if (ret < 0)
		FUNC1("Cannot set rate (%dHz) for hda_hddac clk\n",
			  hddac_rate);

	/* HDformatter clock = compositor clock */
	ret = FUNC2(hda->clk_pix, mode->clock * 1000);
	if (ret < 0)
		FUNC1("Cannot set rate (%dHz) for hda_pix clk\n",
			  mode->clock * 1000);
}