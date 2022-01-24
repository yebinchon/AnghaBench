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
struct intel_hdmi {int /*<<< orphan*/  hdmi_reg; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int pipe_bpp; scalar_t__ has_audio; TYPE_1__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int HDMI_AUDIO_ENABLE ; 
 int HDMI_COLOR_FORMAT_12bpc ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SDVO_COLOR_FORMAT_8bpc ; 
 int SDVO_COLOR_FORMAT_MASK ; 
 int SDVO_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE ; 
 struct intel_hdmi* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 struct drm_i915_private* FUNC6 (struct drm_device*) ; 
 struct intel_crtc* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct intel_encoder *encoder,
			    const struct intel_crtc_state *pipe_config,
			    const struct drm_connector_state *conn_state)
{
	struct drm_device *dev = encoder->base.dev;
	struct drm_i915_private *dev_priv = FUNC6(dev);
	struct intel_crtc *crtc = FUNC7(pipe_config->base.crtc);
	struct intel_hdmi *intel_hdmi = FUNC4(&encoder->base);
	enum pipe pipe = crtc->pipe;
	u32 temp;

	temp = FUNC0(intel_hdmi->hdmi_reg);

	temp |= SDVO_ENABLE;
	if (pipe_config->has_audio)
		temp |= HDMI_AUDIO_ENABLE;

	/*
	 * WaEnableHDMI8bpcBefore12bpc:snb,ivb
	 *
	 * The procedure for 12bpc is as follows:
	 * 1. disable HDMI clock gating
	 * 2. enable HDMI with 8bpc
	 * 3. enable HDMI with 12bpc
	 * 4. enable HDMI clock gating
	 */

	if (pipe_config->pipe_bpp > 24) {
		FUNC1(FUNC3(pipe),
			   FUNC0(FUNC3(pipe)) |
			   TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);

		temp &= ~SDVO_COLOR_FORMAT_MASK;
		temp |= SDVO_COLOR_FORMAT_8bpc;
	}

	FUNC1(intel_hdmi->hdmi_reg, temp);
	FUNC2(intel_hdmi->hdmi_reg);

	if (pipe_config->pipe_bpp > 24) {
		temp &= ~SDVO_COLOR_FORMAT_MASK;
		temp |= HDMI_COLOR_FORMAT_12bpc;

		FUNC1(intel_hdmi->hdmi_reg, temp);
		FUNC2(intel_hdmi->hdmi_reg);

		FUNC1(FUNC3(pipe),
			   FUNC0(FUNC3(pipe)) &
			   ~TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
	}

	if (pipe_config->has_audio)
		FUNC5(encoder, pipe_config, conn_state);
}