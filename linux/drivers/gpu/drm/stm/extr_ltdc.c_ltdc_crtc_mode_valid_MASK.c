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
struct TYPE_2__ {int pad_max_freq_hz; } ;
struct ltdc_device {TYPE_1__ caps; int /*<<< orphan*/  pixel_clk; } ;
struct drm_display_mode {int clock; int type; } ;
struct drm_crtc {int dummy; } ;
typedef  enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;

/* Variables and functions */
 int CLK_TOLERANCE_HZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int DRM_MODE_TYPE_PREFERRED ; 
 int MODE_CLOCK_HIGH ; 
 int MODE_CLOCK_RANGE ; 
 int MODE_OK ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct ltdc_device* FUNC2 (struct drm_crtc*) ; 

__attribute__((used)) static enum drm_mode_status
FUNC3(struct drm_crtc *crtc,
		     const struct drm_display_mode *mode)
{
	struct ltdc_device *ldev = FUNC2(crtc);
	int target = mode->clock * 1000;
	int target_min = target - CLK_TOLERANCE_HZ;
	int target_max = target + CLK_TOLERANCE_HZ;
	int result;

	result = FUNC1(ldev->pixel_clk, target);

	FUNC0("clk rate target %d, available %d\n", target, result);

	/* Filter modes according to the max frequency supported by the pads */
	if (result > ldev->caps.pad_max_freq_hz)
		return MODE_CLOCK_HIGH;

	/*
	 * Accept all "preferred" modes:
	 * - this is important for panels because panel clock tolerances are
	 *   bigger than hdmi ones and there is no reason to not accept them
	 *   (the fps may vary a little but it is not a problem).
	 * - the hdmi preferred mode will be accepted too, but userland will
	 *   be able to use others hdmi "valid" modes if necessary.
	 */
	if (mode->type & DRM_MODE_TYPE_PREFERRED)
		return MODE_OK;

	/*
	 * Filter modes according to the clock value, particularly useful for
	 * hdmi modes that require precise pixel clocks.
	 */
	if (result < target_min || result > target_max)
		return MODE_CLOCK_RANGE;

	return MODE_OK;
}