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
struct intel_hdmi {scalar_t__ has_hdmi_sink; } ;
struct drm_i915_private {int max_dotclk_freq; } ;
struct drm_display_mode {int flags; int clock; } ;
struct drm_device {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  display_info; int /*<<< orphan*/  state; struct drm_device* dev; } ;
typedef  enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;
struct TYPE_2__ {int /*<<< orphan*/  force_audio; } ;

/* Variables and functions */
 int DRM_MODE_FLAG_3D_FRAME_PACKING ; 
 int DRM_MODE_FLAG_3D_MASK ; 
 int DRM_MODE_FLAG_DBLCLK ; 
 int DRM_MODE_FLAG_DBLSCAN ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ HDMI_AUDIO_OFF_DVI ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int MODE_CLOCK_HIGH ; 
 int MODE_NO_DBLESCAN ; 
 int MODE_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct drm_display_mode*) ; 
 int FUNC4 (struct intel_hdmi*,int,int,int) ; 
 struct intel_hdmi* FUNC5 (struct drm_connector*) ; 
 struct drm_device* FUNC6 (struct intel_hdmi*) ; 
 struct drm_i915_private* FUNC7 (struct drm_device*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum drm_mode_status
FUNC9(struct drm_connector *connector,
		      struct drm_display_mode *mode)
{
	struct intel_hdmi *hdmi = FUNC5(connector);
	struct drm_device *dev = FUNC6(hdmi);
	struct drm_i915_private *dev_priv = FUNC7(dev);
	enum drm_mode_status status;
	int clock;
	int max_dotclk = FUNC7(connector->dev)->max_dotclk_freq;
	bool force_dvi =
		FUNC2(FUNC8(connector->state)->force_audio) == HDMI_AUDIO_OFF_DVI;

	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
		return MODE_NO_DBLESCAN;

	clock = mode->clock;

	if ((mode->flags & DRM_MODE_FLAG_3D_MASK) == DRM_MODE_FLAG_3D_FRAME_PACKING)
		clock *= 2;

	if (clock > max_dotclk)
		return MODE_CLOCK_HIGH;

	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
		clock *= 2;

	if (FUNC3(&connector->display_info, mode))
		clock /= 2;

	/* check if we can do 8bpc */
	status = FUNC4(hdmi, clock, true, force_dvi);

	if (hdmi->has_hdmi_sink && !force_dvi) {
		/* if we can't do 8bpc we may still be able to do 12bpc */
		if (status != MODE_OK && !FUNC0(dev_priv))
			status = FUNC4(hdmi, clock * 3 / 2,
						       true, force_dvi);

		/* if we can't do 8,12bpc we may still be able to do 10bpc */
		if (status != MODE_OK && FUNC1(dev_priv) >= 11)
			status = FUNC4(hdmi, clock * 5 / 4,
						       true, force_dvi);
	}

	return status;
}