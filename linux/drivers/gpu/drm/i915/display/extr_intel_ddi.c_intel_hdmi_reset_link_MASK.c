#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct intel_hdmi {int /*<<< orphan*/  ddc_bus; struct intel_connector* attached_connector; } ;
struct TYPE_14__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_7__ base; } ;
struct TYPE_11__ {int /*<<< orphan*/  active; } ;
struct intel_crtc_state {int hdmi_high_tmds_clock_ratio; int hdmi_scrambling; TYPE_4__ base; } ;
struct TYPE_13__ {int /*<<< orphan*/  state; int /*<<< orphan*/  mutex; } ;
struct intel_crtc {TYPE_6__ base; } ;
struct TYPE_10__ {scalar_t__ status; struct drm_connector_state* state; } ;
struct intel_connector {TYPE_3__ base; } ;
struct i2c_adapter {int dummy; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  connection_mutex; } ;
struct TYPE_9__ {TYPE_1__ mode_config; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct drm_connector_state {TYPE_5__* commit; int /*<<< orphan*/  crtc; } ;
struct TYPE_12__ {int /*<<< orphan*/  hw_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
 int SCDC_SCRAMBLING_ENABLE ; 
 int SCDC_TMDS_BIT_CLOCK_RATIO_BY_40 ; 
 int /*<<< orphan*/  SCDC_TMDS_CONFIG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ connector_status_connected ; 
 int FUNC2 (int /*<<< orphan*/ *,struct drm_modeset_acquire_ctx*) ; 
 int FUNC3 (struct i2c_adapter*,int /*<<< orphan*/ ,int*) ; 
 struct intel_hdmi* FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 struct i2c_adapter* FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_6__*,struct drm_modeset_acquire_ctx*) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC9 (int /*<<< orphan*/ ) ; 
 struct intel_crtc_state* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct intel_encoder *encoder,
				 struct drm_modeset_acquire_ctx *ctx)
{
	struct drm_i915_private *dev_priv = FUNC8(encoder->base.dev);
	struct intel_hdmi *hdmi = FUNC4(&encoder->base);
	struct intel_connector *connector = hdmi->attached_connector;
	struct i2c_adapter *adapter =
		FUNC6(dev_priv, hdmi->ddc_bus);
	struct drm_connector_state *conn_state;
	struct intel_crtc_state *crtc_state;
	struct intel_crtc *crtc;
	u8 config;
	int ret;

	if (!connector || connector->base.status != connector_status_connected)
		return 0;

	ret = FUNC2(&dev_priv->drm.mode_config.connection_mutex,
			       ctx);
	if (ret)
		return ret;

	conn_state = connector->base.state;

	crtc = FUNC9(conn_state->crtc);
	if (!crtc)
		return 0;

	ret = FUNC2(&crtc->base.mutex, ctx);
	if (ret)
		return ret;

	crtc_state = FUNC10(crtc->base.state);

	FUNC1(!FUNC5(crtc_state, INTEL_OUTPUT_HDMI));

	if (!crtc_state->base.active)
		return 0;

	if (!crtc_state->hdmi_high_tmds_clock_ratio &&
	    !crtc_state->hdmi_scrambling)
		return 0;

	if (conn_state->commit &&
	    !FUNC11(&conn_state->commit->hw_done))
		return 0;

	ret = FUNC3(adapter, SCDC_TMDS_CONFIG, &config);
	if (ret < 0) {
		FUNC0("Failed to read TMDS config: %d\n", ret);
		return 0;
	}

	if (!!(config & SCDC_TMDS_BIT_CLOCK_RATIO_BY_40) ==
	    crtc_state->hdmi_high_tmds_clock_ratio &&
	    !!(config & SCDC_SCRAMBLING_ENABLE) ==
	    crtc_state->hdmi_scrambling)
		return 0;

	/*
	 * HDMI 2.0 says that one should not send scrambled data
	 * prior to configuring the sink scrambling, and that
	 * TMDS clock/data transmission should be suspended when
	 * changing the TMDS clock rate in the sink. So let's
	 * just do a full modeset here, even though some sinks
	 * would be perfectly happy if were to just reconfigure
	 * the SCDC settings on the fly.
	 */
	return FUNC7(&crtc->base, ctx);
}