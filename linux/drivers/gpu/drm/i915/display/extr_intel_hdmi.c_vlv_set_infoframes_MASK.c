#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_hdmi {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int /*<<< orphan*/  port; TYPE_3__ base; } ;
struct TYPE_5__ {int /*<<< orphan*/  hdmi; int /*<<< orphan*/  spd; int /*<<< orphan*/  avi; } ;
struct TYPE_4__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_2__ infoframes; TYPE_1__ base; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_INFOFRAME_TYPE_AVI ; 
 int /*<<< orphan*/  HDMI_INFOFRAME_TYPE_SPD ; 
 int /*<<< orphan*/  HDMI_INFOFRAME_TYPE_VENDOR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int VIDEO_DIP_ENABLE ; 
 int VIDEO_DIP_ENABLE_AVI ; 
 int VIDEO_DIP_ENABLE_GAMUT ; 
 int VIDEO_DIP_ENABLE_GCP ; 
 int VIDEO_DIP_ENABLE_SPD ; 
 int VIDEO_DIP_ENABLE_VENDOR ; 
 int VIDEO_DIP_FREQ_VSYNC ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int VIDEO_DIP_PORT_MASK ; 
 int VIDEO_DIP_SELECT_AVI ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_hdmi*) ; 
 struct intel_hdmi* FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_encoder*,struct intel_crtc_state const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC10 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct intel_encoder *encoder,
			       bool enable,
			       const struct intel_crtc_state *crtc_state,
			       const struct drm_connector_state *conn_state)
{
	struct drm_i915_private *dev_priv = FUNC10(encoder->base.dev);
	struct intel_crtc *intel_crtc = FUNC11(crtc_state->base.crtc);
	struct intel_hdmi *intel_hdmi = FUNC7(&encoder->base);
	i915_reg_t reg = FUNC4(intel_crtc->pipe);
	u32 val = FUNC0(reg);
	u32 port = FUNC3(encoder->port);

	FUNC6(intel_hdmi);

	/* See the big comment in g4x_set_infoframes() */
	val |= VIDEO_DIP_SELECT_AVI | VIDEO_DIP_FREQ_VSYNC;

	if (!enable) {
		if (!(val & VIDEO_DIP_ENABLE))
			return;
		val &= ~(VIDEO_DIP_ENABLE | VIDEO_DIP_ENABLE_AVI |
			 VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_GAMUT |
			 VIDEO_DIP_ENABLE_SPD | VIDEO_DIP_ENABLE_GCP);
		FUNC1(reg, val);
		FUNC2(reg);
		return;
	}

	if (port != (val & VIDEO_DIP_PORT_MASK)) {
		FUNC5(val & VIDEO_DIP_ENABLE,
		     "DIP already enabled on port %c\n",
		     (val & VIDEO_DIP_PORT_MASK) >> 29);
		val &= ~VIDEO_DIP_PORT_MASK;
		val |= port;
	}

	val |= VIDEO_DIP_ENABLE;
	val &= ~(VIDEO_DIP_ENABLE_AVI |
		 VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_GAMUT |
		 VIDEO_DIP_ENABLE_SPD | VIDEO_DIP_ENABLE_GCP);

	if (FUNC8(encoder, crtc_state, conn_state))
		val |= VIDEO_DIP_ENABLE_GCP;

	FUNC1(reg, val);
	FUNC2(reg);

	FUNC9(encoder, crtc_state,
			      HDMI_INFOFRAME_TYPE_AVI,
			      &crtc_state->infoframes.avi);
	FUNC9(encoder, crtc_state,
			      HDMI_INFOFRAME_TYPE_SPD,
			      &crtc_state->infoframes.spd);
	FUNC9(encoder, crtc_state,
			      HDMI_INFOFRAME_TYPE_VENDOR,
			      &crtc_state->infoframes.hdmi);
}