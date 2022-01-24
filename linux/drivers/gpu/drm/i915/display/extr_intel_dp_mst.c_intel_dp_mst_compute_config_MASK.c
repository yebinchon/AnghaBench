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
struct link_config_limits {int /*<<< orphan*/  max_bpp; int /*<<< orphan*/  min_bpp; int /*<<< orphan*/  max_lane_count; int /*<<< orphan*/  min_lane_count; int /*<<< orphan*/  max_clock; int /*<<< orphan*/  min_clock; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_3__ base; } ;
struct intel_dp_mst_encoder {TYPE_1__* primary; } ;
struct intel_dp {int /*<<< orphan*/  mst_mgr; } ;
struct intel_digital_connector_state {scalar_t__ force_audio; } ;
struct drm_display_mode {int flags; } ;
struct TYPE_5__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int has_pch_encoder; int has_audio; int /*<<< orphan*/  lane_count; int /*<<< orphan*/  lane_lat_optim_mask; int /*<<< orphan*/  limited_color_range; int /*<<< orphan*/  pipe_bpp; int /*<<< orphan*/  output_format; TYPE_2__ base; } ;
struct intel_connector {void* port; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;
struct TYPE_4__ {struct intel_dp dp; } ;

/* Variables and functions */
 int DRM_MODE_FLAG_DBLSCAN ; 
 int EINVAL ; 
 scalar_t__ HDMI_AUDIO_AUTO ; 
 scalar_t__ HDMI_AUDIO_ON ; 
 int /*<<< orphan*/  INTEL_OUTPUT_FORMAT_RGB ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*) ; 
 struct intel_dp_mst_encoder* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*,struct intel_crtc_state*,struct link_config_limits*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_crtc_state*,struct drm_connector_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_crtc_state*) ; 
 int FUNC10 (struct intel_encoder*,struct intel_crtc_state*,struct drm_connector_state*,struct link_config_limits*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 struct drm_i915_private* FUNC12 (int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC13 (int /*<<< orphan*/ ) ; 
 struct intel_digital_connector_state* FUNC14 (struct drm_connector_state*) ; 

__attribute__((used)) static int FUNC15(struct intel_encoder *encoder,
				       struct intel_crtc_state *pipe_config,
				       struct drm_connector_state *conn_state)
{
	struct drm_i915_private *dev_priv = FUNC12(encoder->base.dev);
	struct intel_dp_mst_encoder *intel_mst = FUNC3(&encoder->base);
	struct intel_dp *intel_dp = &intel_mst->primary->dp;
	struct intel_connector *connector =
		FUNC13(conn_state->connector);
	struct intel_digital_connector_state *intel_conn_state =
		FUNC14(conn_state);
	const struct drm_display_mode *adjusted_mode =
		&pipe_config->base.adjusted_mode;
	void *port = connector->port;
	struct link_config_limits limits;
	int ret;

	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
		return -EINVAL;

	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
	pipe_config->has_pch_encoder = false;

	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
		pipe_config->has_audio =
			FUNC2(&intel_dp->mst_mgr, port);
	else
		pipe_config->has_audio =
			intel_conn_state->force_audio == HDMI_AUDIO_ON;

	/*
	 * for MST we always configure max link bw - the spec doesn't
	 * seem to suggest we should do otherwise.
	 */
	limits.min_clock =
	limits.max_clock = FUNC8(intel_dp);

	limits.min_lane_count =
	limits.max_lane_count = FUNC7(intel_dp);

	limits.min_bpp = FUNC9(pipe_config);
	/*
	 * FIXME: If all the streams can't fit into the link with
	 * their current pipe_bpp we should reduce pipe_bpp across
	 * the board until things start to fit. Until then we
	 * limit to <= 8bpc since that's what was hardcoded for all
	 * MST streams previously. This hack should be removed once
	 * we have the proper retry logic in place.
	 */
	limits.max_bpp = FUNC11(pipe_config->pipe_bpp, 24);

	FUNC5(intel_dp, pipe_config, &limits);

	ret = FUNC10(encoder, pipe_config,
					       conn_state, &limits);
	if (ret)
		return ret;

	pipe_config->limited_color_range =
		FUNC6(pipe_config, conn_state);

	if (FUNC0(dev_priv))
		pipe_config->lane_lat_optim_mask =
			FUNC1(pipe_config->lane_count);

	FUNC4(dev_priv, pipe_config);

	return 0;
}