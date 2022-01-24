#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_sdvo_in_out_map {scalar_t__ in1; int /*<<< orphan*/  in0; } ;
struct TYPE_10__ {int sdvo_flags; } ;
struct intel_sdvo_dtd {TYPE_5__ part2; } ;
struct intel_sdvo_connector_state {int dummy; } ;
struct TYPE_8__ {struct drm_display_mode const* fixed_mode; } ;
struct TYPE_9__ {TYPE_3__ panel; } ;
struct intel_sdvo_connector {TYPE_4__ base; } ;
struct intel_sdvo {int dtd_sdvo_flags; scalar_t__ port; int /*<<< orphan*/  sdvo_reg; int /*<<< orphan*/  attached_output; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_7__ {struct drm_display_mode mode; struct drm_display_mode adjusted_mode; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int pixel_multiplier; scalar_t__ limited_color_range; scalar_t__ has_hdmi_sink; TYPE_2__ base; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;
typedef  int /*<<< orphan*/  in_out ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int HDMI_COLOR_RANGE_16_235 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct intel_sdvo_connector const*) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*) ; 
 scalar_t__ FUNC10 (struct intel_sdvo_connector const*) ; 
 scalar_t__ PORT_B ; 
 int SDVOB_PRESERVE_MASK ; 
 int SDVOC_PRESERVE_MASK ; 
 int SDVO_BORDER_ENABLE ; 
 int SDVO_CLOCK_RATE_MULT_1X ; 
 int SDVO_CLOCK_RATE_MULT_2X ; 
 int SDVO_CLOCK_RATE_MULT_4X ; 
 int /*<<< orphan*/  SDVO_CMD_SET_IN_OUT_MAP ; 
 int /*<<< orphan*/  SDVO_COLORIMETRY_RGB256 ; 
 int /*<<< orphan*/  SDVO_ENCODE_DVI ; 
 int /*<<< orphan*/  SDVO_ENCODE_HDMI ; 
 int SDVO_HSYNC_ACTIVE_HIGH ; 
 int /*<<< orphan*/  FUNC11 (struct intel_sdvo*) ; 
 int SDVO_NEED_TO_STALL ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int SDVO_PORT_MULTIPLY_SHIFT ; 
 int SDVO_STALL_SELECT ; 
 int SDVO_VSYNC_ACTIVE_HIGH ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_sdvo_dtd*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_sdvo*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC17 (struct intel_sdvo*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct intel_sdvo*,struct intel_sdvo_dtd*) ; 
 int /*<<< orphan*/  FUNC21 (struct intel_sdvo*,struct intel_sdvo_dtd*) ; 
 int /*<<< orphan*/  FUNC22 (struct intel_sdvo*) ; 
 int /*<<< orphan*/  FUNC23 (struct intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct intel_sdvo*,struct drm_connector_state const*) ; 
 int /*<<< orphan*/  FUNC25 (struct intel_sdvo*,int /*<<< orphan*/ ,struct intel_sdvo_in_out_map*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct intel_sdvo*,struct intel_sdvo_connector_state const*) ; 
 int /*<<< orphan*/  FUNC27 (struct intel_sdvo*,int) ; 
 struct drm_i915_private* FUNC28 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC29 (int /*<<< orphan*/ ) ; 
 struct intel_sdvo_connector* FUNC30 (int /*<<< orphan*/ ) ; 
 struct intel_sdvo_connector_state* FUNC31 (struct drm_connector_state const*) ; 
 struct intel_sdvo* FUNC32 (struct intel_encoder*) ; 

__attribute__((used)) static void FUNC33(struct intel_encoder *intel_encoder,
				  const struct intel_crtc_state *crtc_state,
				  const struct drm_connector_state *conn_state)
{
	struct drm_i915_private *dev_priv = FUNC28(intel_encoder->base.dev);
	struct intel_crtc *crtc = FUNC29(crtc_state->base.crtc);
	const struct drm_display_mode *adjusted_mode = &crtc_state->base.adjusted_mode;
	const struct intel_sdvo_connector_state *sdvo_state =
		FUNC31(conn_state);
	const struct intel_sdvo_connector *intel_sdvo_connector =
		FUNC30(conn_state->connector);
	const struct drm_display_mode *mode = &crtc_state->base.mode;
	struct intel_sdvo *intel_sdvo = FUNC32(intel_encoder);
	u32 sdvox;
	struct intel_sdvo_in_out_map in_out;
	struct intel_sdvo_dtd input_dtd, output_dtd;
	int rate;

	FUNC26(intel_sdvo, sdvo_state);

	/*
	 * First, set the input mapping for the first input to our controlled
	 * output. This is only correct if we're a single-input device, in
	 * which case the first input is the output from the appropriate SDVO
	 * channel on the motherboard.  In a two-input device, the first input
	 * will be SDVOB and the second SDVOC.
	 */
	in_out.in0 = intel_sdvo->attached_output;
	in_out.in1 = 0;

	FUNC25(intel_sdvo,
			     SDVO_CMD_SET_IN_OUT_MAP,
			     &in_out, sizeof(in_out));

	/* Set the output timings to the screen */
	if (!FUNC23(intel_sdvo,
					  intel_sdvo->attached_output))
		return;

	/* lvds has a special fixed output timing. */
	if (FUNC8(intel_sdvo_connector))
		FUNC15(&output_dtd,
					     intel_sdvo_connector->base.panel.fixed_mode);
	else
		FUNC15(&output_dtd, mode);
	if (!FUNC21(intel_sdvo, &output_dtd))
		FUNC0("Setting output timings on %s failed\n",
			 FUNC11(intel_sdvo));

	/* Set the input timing to the screen. Assume always input 0. */
	if (!FUNC22(intel_sdvo))
		return;

	if (crtc_state->has_hdmi_sink) {
		FUNC19(intel_sdvo, SDVO_ENCODE_HDMI);
		FUNC18(intel_sdvo,
					   SDVO_COLORIMETRY_RGB256);
		FUNC16(intel_sdvo, crtc_state);
	} else
		FUNC19(intel_sdvo, SDVO_ENCODE_DVI);

	if (FUNC10(intel_sdvo_connector) &&
	    !FUNC24(intel_sdvo, conn_state))
		return;

	FUNC15(&input_dtd, adjusted_mode);

	if (FUNC10(intel_sdvo_connector) || FUNC8(intel_sdvo_connector))
		input_dtd.part2.sdvo_flags = intel_sdvo->dtd_sdvo_flags;
	if (!FUNC20(intel_sdvo, &input_dtd))
		FUNC0("Setting input timings on %s failed\n",
			 FUNC11(intel_sdvo));

	switch (crtc_state->pixel_multiplier) {
	default:
		FUNC14(1, "unknown pixel multiplier specified\n");
		/* fall through */
	case 1: rate = SDVO_CLOCK_RATE_MULT_1X; break;
	case 2: rate = SDVO_CLOCK_RATE_MULT_2X; break;
	case 4: rate = SDVO_CLOCK_RATE_MULT_4X; break;
	}
	if (!FUNC17(intel_sdvo, rate))
		return;

	/* Set the SDVO control regs. */
	if (FUNC4(dev_priv) >= 4) {
		/* The real mode polarity is set by the SDVO commands, using
		 * struct intel_sdvo_dtd. */
		sdvox = SDVO_VSYNC_ACTIVE_HIGH | SDVO_HSYNC_ACTIVE_HIGH;
		if (!FUNC2(dev_priv) && crtc_state->limited_color_range)
			sdvox |= HDMI_COLOR_RANGE_16_235;
		if (FUNC4(dev_priv) < 5)
			sdvox |= SDVO_BORDER_ENABLE;
	} else {
		sdvox = FUNC3(intel_sdvo->sdvo_reg);
		if (intel_sdvo->port == PORT_B)
			sdvox &= SDVOB_PRESERVE_MASK;
		else
			sdvox &= SDVOC_PRESERVE_MASK;
		sdvox |= (9 << 19) | SDVO_BORDER_ENABLE;
	}

	if (FUNC1(dev_priv))
		sdvox |= FUNC13(crtc->pipe);
	else
		sdvox |= FUNC12(crtc->pipe);

	if (FUNC4(dev_priv) >= 4) {
		/* done in crtc_mode_set as the dpll_md reg must be written early */
	} else if (FUNC6(dev_priv) || FUNC7(dev_priv) ||
		   FUNC5(dev_priv) || FUNC9(dev_priv)) {
		/* done in crtc_mode_set as it lives inside the dpll register */
	} else {
		sdvox |= (crtc_state->pixel_multiplier - 1)
			<< SDVO_PORT_MULTIPLY_SHIFT;
	}

	if (input_dtd.part2.sdvo_flags & SDVO_NEED_TO_STALL &&
	    FUNC4(dev_priv) < 5)
		sdvox |= SDVO_STALL_SELECT;
	FUNC27(intel_sdvo, sdvox);
}