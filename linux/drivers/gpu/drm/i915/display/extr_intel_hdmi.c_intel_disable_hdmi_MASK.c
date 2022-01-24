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
struct intel_digital_port {int /*<<< orphan*/  (* set_infoframes ) (struct intel_encoder*,int,struct intel_crtc_state const*,struct drm_connector_state const*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct intel_crtc {scalar_t__ pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int HDMI_AUDIO_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PIPE_A ; 
 scalar_t__ PIPE_B ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int SDVO_ENABLE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int SDVO_PIPE_SEL_MASK ; 
 struct intel_hdmi* FUNC5 (TYPE_2__*) ; 
 struct intel_digital_port* FUNC6 (struct intel_hdmi*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_hdmi*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_encoder*,int,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 struct drm_i915_private* FUNC12 (struct drm_device*) ; 
 struct intel_crtc* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct intel_encoder *encoder,
			       const struct intel_crtc_state *old_crtc_state,
			       const struct drm_connector_state *old_conn_state)
{
	struct drm_device *dev = encoder->base.dev;
	struct drm_i915_private *dev_priv = FUNC12(dev);
	struct intel_hdmi *intel_hdmi = FUNC5(&encoder->base);
	struct intel_digital_port *intel_dig_port =
		FUNC6(intel_hdmi);
	struct intel_crtc *crtc = FUNC13(old_crtc_state->base.crtc);
	u32 temp;

	temp = FUNC1(intel_hdmi->hdmi_reg);

	temp &= ~(SDVO_ENABLE | HDMI_AUDIO_ENABLE);
	FUNC2(intel_hdmi->hdmi_reg, temp);
	FUNC3(intel_hdmi->hdmi_reg);

	/*
	 * HW workaround for IBX, we need to move the port
	 * to transcoder A after disabling it to allow the
	 * matching DP port to be enabled on transcoder A.
	 */
	if (FUNC0(dev_priv) && crtc->pipe == PIPE_B) {
		/*
		 * We get CPU/PCH FIFO underruns on the other pipe when
		 * doing the workaround. Sweep them under the rug.
		 */
		FUNC8(dev_priv, PIPE_A, false);
		FUNC9(dev_priv, PIPE_A, false);

		temp &= ~SDVO_PIPE_SEL_MASK;
		temp |= SDVO_ENABLE | FUNC4(PIPE_A);
		/*
		 * HW workaround, need to write this twice for issue
		 * that may result in first write getting masked.
		 */
		FUNC2(intel_hdmi->hdmi_reg, temp);
		FUNC3(intel_hdmi->hdmi_reg);
		FUNC2(intel_hdmi->hdmi_reg, temp);
		FUNC3(intel_hdmi->hdmi_reg);

		temp &= ~SDVO_ENABLE;
		FUNC2(intel_hdmi->hdmi_reg, temp);
		FUNC3(intel_hdmi->hdmi_reg);

		FUNC10(dev_priv, PIPE_A);
		FUNC8(dev_priv, PIPE_A, true);
		FUNC9(dev_priv, PIPE_A, true);
	}

	intel_dig_port->set_infoframes(encoder,
				       false,
				       old_crtc_state, old_conn_state);

	FUNC7(intel_hdmi, false);
}