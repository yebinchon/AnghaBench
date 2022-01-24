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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct intel_dp {int /*<<< orphan*/  fec_capable; int /*<<< orphan*/  dsc_dpcd; } ;
struct TYPE_2__ {struct drm_display_mode* fixed_mode; } ;
struct intel_connector {TYPE_1__ panel; } ;
struct drm_i915_private {int dummy; } ;
struct drm_display_mode {int clock; int flags; scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;
typedef  enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;

/* Variables and functions */
 int DRM_MODE_FLAG_DBLCLK ; 
 int DRM_MODE_FLAG_DBLSCAN ; 
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int MODE_CLOCK_HIGH ; 
 int MODE_CLOCK_LOW ; 
 int MODE_H_ILLEGAL ; 
 int MODE_NO_DBLESCAN ; 
 int MODE_OK ; 
 int MODE_PANEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct intel_dp* FUNC6 (struct drm_connector*) ; 
 int FUNC7 (struct intel_dp*) ; 
 int FUNC8 (int,int,int,scalar_t__) ; 
 scalar_t__ FUNC9 (struct intel_dp*,int,scalar_t__) ; 
 scalar_t__ FUNC10 (struct intel_dp*) ; 
 int FUNC11 (int,int) ; 
 int FUNC12 (int,int) ; 
 int FUNC13 (struct intel_dp*) ; 
 int FUNC14 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC15 (int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC16 (struct drm_connector*) ; 

__attribute__((used)) static enum drm_mode_status
FUNC17(struct drm_connector *connector,
		    struct drm_display_mode *mode)
{
	struct intel_dp *intel_dp = FUNC6(connector);
	struct intel_connector *intel_connector = FUNC16(connector);
	struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;
	struct drm_i915_private *dev_priv = FUNC15(connector->dev);
	int target_clock = mode->clock;
	int max_rate, mode_rate, max_lanes, max_link_clock;
	int max_dotclk;
	u16 dsc_max_output_bpp = 0;
	u8 dsc_slice_count = 0;

	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
		return MODE_NO_DBLESCAN;

	max_dotclk = FUNC7(intel_dp);

	if (FUNC10(intel_dp) && fixed_mode) {
		if (mode->hdisplay > fixed_mode->hdisplay)
			return MODE_PANEL;

		if (mode->vdisplay > fixed_mode->vdisplay)
			return MODE_PANEL;

		target_clock = fixed_mode->clock;
	}

	max_link_clock = FUNC14(intel_dp);
	max_lanes = FUNC13(intel_dp);

	max_rate = FUNC12(max_link_clock, max_lanes);
	mode_rate = FUNC11(target_clock, 18);

	/*
	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
	 * integer value since we support only integer values of bpp.
	 */
	if ((FUNC0(dev_priv) >= 10 || FUNC1(dev_priv)) &&
	    FUNC3(intel_dp->dsc_dpcd)) {
		if (FUNC10(intel_dp)) {
			dsc_max_output_bpp =
				FUNC5(intel_dp->dsc_dpcd) >> 4;
			dsc_slice_count =
				FUNC2(intel_dp->dsc_dpcd,
								true);
		} else if (FUNC4(intel_dp->fec_capable)) {
			dsc_max_output_bpp =
				FUNC8(max_link_clock,
							    max_lanes,
							    target_clock,
							    mode->hdisplay) >> 4;
			dsc_slice_count =
				FUNC9(intel_dp,
							     target_clock,
							     mode->hdisplay);
		}
	}

	if ((mode_rate > max_rate && !(dsc_max_output_bpp && dsc_slice_count)) ||
	    target_clock > max_dotclk)
		return MODE_CLOCK_HIGH;

	if (mode->clock < 10000)
		return MODE_CLOCK_LOW;

	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
		return MODE_H_ILLEGAL;

	return MODE_OK;
}