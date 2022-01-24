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
typedef  int u32 ;
struct intel_hdmi {int /*<<< orphan*/  hdmi_reg; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {int pipe_bpp; int pixel_multiplier; scalar_t__ has_audio; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector_state {int dummy; } ;

/* Variables and functions */
 int HDMI_AUDIO_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SDVO_ENABLE ; 
 struct intel_hdmi* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 struct drm_i915_private* FUNC5 (struct drm_device*) ; 

__attribute__((used)) static void FUNC6(struct intel_encoder *encoder,
			    const struct intel_crtc_state *pipe_config,
			    const struct drm_connector_state *conn_state)
{
	struct drm_device *dev = encoder->base.dev;
	struct drm_i915_private *dev_priv = FUNC5(dev);
	struct intel_hdmi *intel_hdmi = FUNC3(&encoder->base);
	u32 temp;

	temp = FUNC0(intel_hdmi->hdmi_reg);

	temp |= SDVO_ENABLE;
	if (pipe_config->has_audio)
		temp |= HDMI_AUDIO_ENABLE;

	/*
	 * HW workaround, need to write this twice for issue
	 * that may result in first write getting masked.
	 */
	FUNC1(intel_hdmi->hdmi_reg, temp);
	FUNC2(intel_hdmi->hdmi_reg);
	FUNC1(intel_hdmi->hdmi_reg, temp);
	FUNC2(intel_hdmi->hdmi_reg);

	/*
	 * HW workaround, need to toggle enable bit off and on
	 * for 12bpc with pixel repeat.
	 *
	 * FIXME: BSpec says this should be done at the end of
	 * of the modeset sequence, so not sure if this isn't too soon.
	 */
	if (pipe_config->pipe_bpp > 24 &&
	    pipe_config->pixel_multiplier > 1) {
		FUNC1(intel_hdmi->hdmi_reg, temp & ~SDVO_ENABLE);
		FUNC2(intel_hdmi->hdmi_reg);

		/*
		 * HW workaround, need to write this twice for issue
		 * that may result in first write getting masked.
		 */
		FUNC1(intel_hdmi->hdmi_reg, temp);
		FUNC2(intel_hdmi->hdmi_reg);
		FUNC1(intel_hdmi->hdmi_reg, temp);
		FUNC2(intel_hdmi->hdmi_reg);
	}

	if (pipe_config->has_audio)
		FUNC4(encoder, pipe_config, conn_state);
}