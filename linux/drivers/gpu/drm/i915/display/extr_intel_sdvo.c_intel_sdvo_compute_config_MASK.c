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
struct TYPE_10__ {scalar_t__ force_audio; scalar_t__ broadcast_rgb; } ;
struct intel_sdvo_connector_state {TYPE_5__ base; } ;
struct TYPE_8__ {struct drm_display_mode* fixed_mode; } ;
struct TYPE_9__ {TYPE_3__ panel; } ;
struct intel_sdvo_connector {scalar_t__ is_hdmi; TYPE_4__ base; } ;
struct intel_sdvo {scalar_t__ has_hdmi_audio; int /*<<< orphan*/  has_hdmi_monitor; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct drm_display_mode {int flags; int /*<<< orphan*/  picture_aspect_ratio; } ;
struct TYPE_6__ {struct drm_display_mode mode; struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int pipe_bpp; int has_pch_encoder; int sdvo_tv_clock; int has_audio; int limited_color_range; int /*<<< orphan*/  has_hdmi_sink; int /*<<< orphan*/  pixel_multiplier; int /*<<< orphan*/  output_format; TYPE_1__ base; } ;
struct drm_connector_state {int /*<<< orphan*/  picture_aspect_ratio; int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DRM_MODE_FLAG_DBLSCAN ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ HDMI_AUDIO_AUTO ; 
 scalar_t__ HDMI_AUDIO_OFF_DVI ; 
 scalar_t__ HDMI_AUDIO_ON ; 
 scalar_t__ INTEL_BROADCAST_RGB_AUTO ; 
 scalar_t__ INTEL_BROADCAST_RGB_LIMITED ; 
 int /*<<< orphan*/  INTEL_OUTPUT_FORMAT_RGB ; 
 scalar_t__ FUNC2 (struct intel_sdvo_connector*) ; 
 scalar_t__ FUNC3 (struct intel_sdvo_connector*) ; 
 int FUNC4 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_sdvo*,struct intel_crtc_state*,struct drm_connector_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_sdvo*,struct intel_sdvo_connector*,struct drm_display_mode*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_sdvo*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct intel_sdvo_connector* FUNC11 (int /*<<< orphan*/ ) ; 
 struct intel_sdvo_connector_state* FUNC12 (struct drm_connector_state*) ; 
 struct intel_sdvo* FUNC13 (struct intel_encoder*) ; 

__attribute__((used)) static int FUNC14(struct intel_encoder *encoder,
				     struct intel_crtc_state *pipe_config,
				     struct drm_connector_state *conn_state)
{
	struct intel_sdvo *intel_sdvo = FUNC13(encoder);
	struct intel_sdvo_connector_state *intel_sdvo_state =
		FUNC12(conn_state);
	struct intel_sdvo_connector *intel_sdvo_connector =
		FUNC11(conn_state->connector);
	struct drm_display_mode *adjusted_mode = &pipe_config->base.adjusted_mode;
	struct drm_display_mode *mode = &pipe_config->base.mode;

	FUNC0("forcing bpc to 8 for SDVO\n");
	pipe_config->pipe_bpp = 8*3;
	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;

	if (FUNC1(FUNC10(encoder->base.dev)))
		pipe_config->has_pch_encoder = true;

	/*
	 * We need to construct preferred input timings based on our
	 * output timings.  To do that, we have to set the output
	 * timings, even though this isn't really the right place in
	 * the sequence to do it. Oh well.
	 */
	if (FUNC3(intel_sdvo_connector)) {
		if (!FUNC9(intel_sdvo, mode))
			return -EINVAL;

		(void) FUNC8(intel_sdvo,
							   intel_sdvo_connector,
							   mode,
							   adjusted_mode);
		pipe_config->sdvo_tv_clock = true;
	} else if (FUNC2(intel_sdvo_connector)) {
		if (!FUNC9(intel_sdvo,
							     intel_sdvo_connector->base.panel.fixed_mode))
			return -EINVAL;

		(void) FUNC8(intel_sdvo,
							   intel_sdvo_connector,
							   mode,
							   adjusted_mode);
	}

	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
		return -EINVAL;

	/*
	 * Make the CRTC code factor in the SDVO pixel multiplier.  The
	 * SDVO device will factor out the multiplier during mode_set.
	 */
	pipe_config->pixel_multiplier =
		FUNC7(adjusted_mode);

	if (intel_sdvo_state->base.force_audio != HDMI_AUDIO_OFF_DVI)
		pipe_config->has_hdmi_sink = intel_sdvo->has_hdmi_monitor;

	if (intel_sdvo_state->base.force_audio == HDMI_AUDIO_ON ||
	    (intel_sdvo_state->base.force_audio == HDMI_AUDIO_AUTO && intel_sdvo->has_hdmi_audio))
		pipe_config->has_audio = true;

	if (intel_sdvo_state->base.broadcast_rgb == INTEL_BROADCAST_RGB_AUTO) {
		/*
		 * See CEA-861-E - 5.1 Default Encoding Parameters
		 *
		 * FIXME: This bit is only valid when using TMDS encoding and 8
		 * bit per color mode.
		 */
		if (pipe_config->has_hdmi_sink &&
		    FUNC4(adjusted_mode) > 1)
			pipe_config->limited_color_range = true;
	} else {
		if (pipe_config->has_hdmi_sink &&
		    intel_sdvo_state->base.broadcast_rgb == INTEL_BROADCAST_RGB_LIMITED)
			pipe_config->limited_color_range = true;
	}

	/* Clock computation needs to happen after pixel multiplier. */
	if (FUNC3(intel_sdvo_connector))
		FUNC5(pipe_config);

	/* Set user selected PAR to incoming mode's member */
	if (intel_sdvo_connector->is_hdmi)
		adjusted_mode->picture_aspect_ratio = conn_state->picture_aspect_ratio;

	if (!FUNC6(intel_sdvo,
					      pipe_config, conn_state)) {
		FUNC0("bad AVI infoframe\n");
		return -EINVAL;
	}

	return 0;
}