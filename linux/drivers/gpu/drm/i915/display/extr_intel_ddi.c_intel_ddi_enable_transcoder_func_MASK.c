#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_encoder {int port; } ;
struct TYPE_8__ {int /*<<< orphan*/  force_thru; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {TYPE_2__ adjusted_mode; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int cpu_transcoder; int pipe_bpp; int fdi_lanes; int /*<<< orphan*/  lane_count; scalar_t__ hdmi_high_tmds_clock_ratio; scalar_t__ hdmi_scrambling; scalar_t__ has_hdmi_sink; TYPE_4__ pch_pfit; TYPE_3__ base; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int DRM_MODE_FLAG_PHSYNC ; 
 int DRM_MODE_FLAG_PVSYNC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_ANALOG ; 
 int /*<<< orphan*/  INTEL_OUTPUT_DP_MST ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
#define  PIPE_A 130 
#define  PIPE_B 129 
#define  PIPE_C 128 
 int FUNC4 (int) ; 
 int TRANSCODER_EDP ; 
 int TRANS_DDI_BPC_10 ; 
 int TRANS_DDI_BPC_12 ; 
 int TRANS_DDI_BPC_6 ; 
 int TRANS_DDI_BPC_8 ; 
 int TRANS_DDI_EDP_INPUT_A_ON ; 
 int TRANS_DDI_EDP_INPUT_A_ONOFF ; 
 int TRANS_DDI_EDP_INPUT_B_ONOFF ; 
 int TRANS_DDI_EDP_INPUT_C_ONOFF ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int TRANS_DDI_FUNC_ENABLE ; 
 int TRANS_DDI_HDMI_SCRAMBLING ; 
 int TRANS_DDI_HIGH_TMDS_CHAR_RATE ; 
 int TRANS_DDI_MODE_SELECT_DP_MST ; 
 int TRANS_DDI_MODE_SELECT_DP_SST ; 
 int TRANS_DDI_MODE_SELECT_DVI ; 
 int TRANS_DDI_MODE_SELECT_FDI ; 
 int TRANS_DDI_MODE_SELECT_HDMI ; 
 int TRANS_DDI_PHSYNC ; 
 int TRANS_DDI_PVSYNC ; 
 int FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct intel_crtc_state const*,int /*<<< orphan*/ ) ; 
 struct intel_encoder* FUNC8 (struct intel_crtc*) ; 
 struct drm_i915_private* FUNC9 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC10(crtc_state->base.crtc);
	struct intel_encoder *encoder = FUNC8(crtc);
	struct drm_i915_private *dev_priv = FUNC9(crtc->base.dev);
	enum pipe pipe = crtc->pipe;
	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
	enum port port = encoder->port;
	u32 temp;

	/* Enable TRANS_DDI_FUNC_CTL for the pipe to work in HDMI mode */
	temp = TRANS_DDI_FUNC_ENABLE;
	if (FUNC3(dev_priv) >= 12)
		temp |= FUNC4(port);
	else
		temp |= FUNC6(port);

	switch (crtc_state->pipe_bpp) {
	case 18:
		temp |= TRANS_DDI_BPC_6;
		break;
	case 24:
		temp |= TRANS_DDI_BPC_8;
		break;
	case 30:
		temp |= TRANS_DDI_BPC_10;
		break;
	case 36:
		temp |= TRANS_DDI_BPC_12;
		break;
	default:
		FUNC0();
	}

	if (crtc_state->base.adjusted_mode.flags & DRM_MODE_FLAG_PVSYNC)
		temp |= TRANS_DDI_PVSYNC;
	if (crtc_state->base.adjusted_mode.flags & DRM_MODE_FLAG_PHSYNC)
		temp |= TRANS_DDI_PHSYNC;

	if (cpu_transcoder == TRANSCODER_EDP) {
		switch (pipe) {
		case PIPE_A:
			/* On Haswell, can only use the always-on power well for
			 * eDP when not using the panel fitter, and when not
			 * using motion blur mitigation (which we don't
			 * support). */
			if (crtc_state->pch_pfit.force_thru)
				temp |= TRANS_DDI_EDP_INPUT_A_ONOFF;
			else
				temp |= TRANS_DDI_EDP_INPUT_A_ON;
			break;
		case PIPE_B:
			temp |= TRANS_DDI_EDP_INPUT_B_ONOFF;
			break;
		case PIPE_C:
			temp |= TRANS_DDI_EDP_INPUT_C_ONOFF;
			break;
		default:
			FUNC0();
			break;
		}
	}

	if (FUNC7(crtc_state, INTEL_OUTPUT_HDMI)) {
		if (crtc_state->has_hdmi_sink)
			temp |= TRANS_DDI_MODE_SELECT_HDMI;
		else
			temp |= TRANS_DDI_MODE_SELECT_DVI;

		if (crtc_state->hdmi_scrambling)
			temp |= TRANS_DDI_HDMI_SCRAMBLING;
		if (crtc_state->hdmi_high_tmds_clock_ratio)
			temp |= TRANS_DDI_HIGH_TMDS_CHAR_RATE;
	} else if (FUNC7(crtc_state, INTEL_OUTPUT_ANALOG)) {
		temp |= TRANS_DDI_MODE_SELECT_FDI;
		temp |= (crtc_state->fdi_lanes - 1) << 1;
	} else if (FUNC7(crtc_state, INTEL_OUTPUT_DP_MST)) {
		temp |= TRANS_DDI_MODE_SELECT_DP_MST;
		temp |= FUNC1(crtc_state->lane_count);
	} else {
		temp |= TRANS_DDI_MODE_SELECT_DP_SST;
		temp |= FUNC1(crtc_state->lane_count);
	}

	FUNC2(FUNC5(cpu_transcoder), temp);
}