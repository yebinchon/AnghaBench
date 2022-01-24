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
struct intel_hdmi {int has_audio; scalar_t__ has_hdmi_sink; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_4__ base; } ;
struct intel_digital_connector_state {scalar_t__ force_audio; scalar_t__ broadcast_rgb; } ;
struct drm_display_mode {int crtc_clock; int flags; int /*<<< orphan*/  picture_aspect_ratio; } ;
struct TYPE_7__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int has_hdmi_sink; int has_infoframe; int limited_color_range; int pixel_multiplier; int has_pch_encoder; int has_audio; int port_clock; int pipe_bpp; int lane_count; int hdmi_scrambling; int hdmi_high_tmds_clock_ratio; int /*<<< orphan*/  bw_constrained; int /*<<< orphan*/  output_format; TYPE_2__ base; } ;
struct TYPE_8__ {scalar_t__ low_rates; scalar_t__ supported; } ;
struct drm_scdc {TYPE_3__ scrambling; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int /*<<< orphan*/  picture_aspect_ratio; struct drm_connector* connector; } ;
struct TYPE_6__ {struct drm_scdc scdc; } ;
struct TYPE_10__ {TYPE_1__ hdmi; } ;
struct drm_connector {TYPE_5__ display_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int DRM_MODE_FLAG_DBLCLK ; 
 int DRM_MODE_FLAG_DBLSCAN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ HDMI_AUDIO_AUTO ; 
 scalar_t__ HDMI_AUDIO_OFF_DVI ; 
 scalar_t__ HDMI_AUDIO_ON ; 
 scalar_t__ HDMI_QUANTIZATION_RANGE_LIMITED ; 
 scalar_t__ INTEL_BROADCAST_RGB_AUTO ; 
 scalar_t__ INTEL_BROADCAST_RGB_LIMITED ; 
 int FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_FORMAT_RGB ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ MODE_OK ; 
 scalar_t__ FUNC6 (struct drm_display_mode*) ; 
 scalar_t__ FUNC7 (TYPE_5__*,struct drm_display_mode*) ; 
 struct intel_hdmi* FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (struct intel_crtc_state*,int) ; 
 scalar_t__ FUNC10 (struct intel_hdmi*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_encoder*,struct intel_crtc_state*,struct drm_connector_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_encoder*,struct intel_crtc_state*,struct drm_connector_state*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_encoder*,struct intel_crtc_state*,struct drm_connector_state*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_encoder*,struct intel_crtc_state*,struct drm_connector_state*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_encoder*,struct intel_crtc_state*,struct drm_connector_state*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_connector*,struct intel_crtc_state*,int*,int*,int*) ; 
 struct drm_i915_private* FUNC17 (int /*<<< orphan*/ ) ; 
 struct intel_digital_connector_state* FUNC18 (struct drm_connector_state*) ; 

int FUNC19(struct intel_encoder *encoder,
			      struct intel_crtc_state *pipe_config,
			      struct drm_connector_state *conn_state)
{
	struct intel_hdmi *intel_hdmi = FUNC8(&encoder->base);
	struct drm_i915_private *dev_priv = FUNC17(encoder->base.dev);
	struct drm_display_mode *adjusted_mode = &pipe_config->base.adjusted_mode;
	struct drm_connector *connector = conn_state->connector;
	struct drm_scdc *scdc = &connector->display_info.hdmi.scdc;
	struct intel_digital_connector_state *intel_conn_state =
		FUNC18(conn_state);
	int clock_8bpc = pipe_config->base.adjusted_mode.crtc_clock;
	int clock_10bpc = clock_8bpc * 5 / 4;
	int clock_12bpc = clock_8bpc * 3 / 2;
	int desired_bpp;
	bool force_dvi = intel_conn_state->force_audio == HDMI_AUDIO_OFF_DVI;

	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
		return -EINVAL;

	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
	pipe_config->has_hdmi_sink = !force_dvi && intel_hdmi->has_hdmi_sink;

	if (pipe_config->has_hdmi_sink)
		pipe_config->has_infoframe = true;

	if (intel_conn_state->broadcast_rgb == INTEL_BROADCAST_RGB_AUTO) {
		/* See CEA-861-E - 5.1 Default Encoding Parameters */
		pipe_config->limited_color_range =
			pipe_config->has_hdmi_sink &&
			FUNC6(adjusted_mode) ==
			HDMI_QUANTIZATION_RANGE_LIMITED;
	} else {
		pipe_config->limited_color_range =
			intel_conn_state->broadcast_rgb == INTEL_BROADCAST_RGB_LIMITED;
	}

	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK) {
		pipe_config->pixel_multiplier = 2;
		clock_8bpc *= 2;
		clock_10bpc *= 2;
		clock_12bpc *= 2;
	}

	if (FUNC7(&connector->display_info, adjusted_mode)) {
		if (!FUNC16(connector, pipe_config,
						&clock_12bpc, &clock_10bpc,
						&clock_8bpc)) {
			FUNC1("Can't support YCBCR420 output\n");
			return -EINVAL;
		}
	}

	if (FUNC3(dev_priv) && !FUNC2(dev_priv))
		pipe_config->has_pch_encoder = true;

	if (pipe_config->has_hdmi_sink) {
		if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
			pipe_config->has_audio = intel_hdmi->has_audio;
		else
			pipe_config->has_audio =
				intel_conn_state->force_audio == HDMI_AUDIO_ON;
	}

	/*
	 * Note that g4x/vlv don't support 12bpc hdmi outputs. We also need
	 * to check that the higher clock still fits within limits.
	 */
	if (FUNC9(pipe_config, 12) &&
	    FUNC10(intel_hdmi, clock_12bpc,
				  true, force_dvi) == MODE_OK) {
		FUNC0("picking bpc to 12 for HDMI output\n");
		desired_bpp = 12*3;

		/* Need to adjust the port link by 1.5x for 12bpc. */
		pipe_config->port_clock = clock_12bpc;
	} else if (FUNC9(pipe_config, 10) &&
		   FUNC10(intel_hdmi, clock_10bpc,
					 true, force_dvi) == MODE_OK) {
		FUNC0("picking bpc to 10 for HDMI output\n");
		desired_bpp = 10 * 3;

		/* Need to adjust the port link by 1.25x for 10bpc. */
		pipe_config->port_clock = clock_10bpc;
	} else {
		FUNC0("picking bpc to 8 for HDMI output\n");
		desired_bpp = 8*3;

		pipe_config->port_clock = clock_8bpc;
	}

	if (!pipe_config->bw_constrained) {
		FUNC0("forcing pipe bpp to %i for HDMI\n", desired_bpp);
		pipe_config->pipe_bpp = desired_bpp;
	}

	if (FUNC10(intel_hdmi, pipe_config->port_clock,
				  false, force_dvi) != MODE_OK) {
		FUNC0("unsupported HDMI clock, rejecting mode\n");
		return -EINVAL;
	}

	/* Set user selected PAR to incoming mode's member */
	adjusted_mode->picture_aspect_ratio = conn_state->picture_aspect_ratio;

	pipe_config->lane_count = 4;

	if (scdc->scrambling.supported && (FUNC4(dev_priv) >= 10 ||
					   FUNC5(dev_priv))) {
		if (scdc->scrambling.low_rates)
			pipe_config->hdmi_scrambling = true;

		if (pipe_config->port_clock > 340000) {
			pipe_config->hdmi_scrambling = true;
			pipe_config->hdmi_high_tmds_clock_ratio = true;
		}
	}

	FUNC13(encoder, pipe_config, conn_state);

	if (!FUNC11(encoder, pipe_config, conn_state)) {
		FUNC0("bad AVI infoframe\n");
		return -EINVAL;
	}

	if (!FUNC15(encoder, pipe_config, conn_state)) {
		FUNC0("bad SPD infoframe\n");
		return -EINVAL;
	}

	if (!FUNC14(encoder, pipe_config, conn_state)) {
		FUNC0("bad HDMI infoframe\n");
		return -EINVAL;
	}

	if (!FUNC12(encoder, pipe_config, conn_state)) {
		FUNC0("bad DRM infoframe\n");
		return -EINVAL;
	}

	return 0;
}