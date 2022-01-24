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
struct drm_encoder {int dummy; } ;
struct intel_encoder {int crtc_mask; int port; scalar_t__ cloneable; int /*<<< orphan*/  power_domain; int /*<<< orphan*/  type; int /*<<< orphan*/  post_disable; void* disable; void* enable; int /*<<< orphan*/  pre_enable; int /*<<< orphan*/  pre_pll_enable; int /*<<< orphan*/  post_pll_disable; int /*<<< orphan*/  suspend; int /*<<< orphan*/  update_pipe; int /*<<< orphan*/  get_config; int /*<<< orphan*/  get_hw_state; int /*<<< orphan*/  compute_config; int /*<<< orphan*/  hotplug; struct drm_encoder base; } ;
struct TYPE_2__ {int /*<<< orphan*/  output_reg; } ;
struct intel_digital_port {int max_lanes; int /*<<< orphan*/  aux_ch; int /*<<< orphan*/  hpd_pulse; TYPE_1__ dp; struct intel_encoder base; } ;
struct intel_connector {int max_lanes; int /*<<< orphan*/  aux_ch; int /*<<< orphan*/  hpd_pulse; TYPE_1__ dp; struct intel_encoder base; } ;
struct drm_i915_private {int /*<<< orphan*/  drm; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INTEL_OUTPUT_DP ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int PORT_A ; 
 int PORT_D ; 
 int /*<<< orphan*/  chv_dp_post_pll_disable ; 
 int /*<<< orphan*/  chv_dp_pre_pll_enable ; 
 int /*<<< orphan*/  chv_post_disable_dp ; 
 int /*<<< orphan*/  chv_pre_enable_dp ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* g4x_disable_dp ; 
 void* g4x_enable_dp ; 
 int /*<<< orphan*/  g4x_post_disable_dp ; 
 int /*<<< orphan*/  g4x_pre_enable_dp ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int) ; 
 struct intel_digital_port* FUNC5 () ; 
 int /*<<< orphan*/  intel_dp_compute_config ; 
 int /*<<< orphan*/  intel_dp_enc_funcs ; 
 int /*<<< orphan*/  intel_dp_encoder_suspend ; 
 int /*<<< orphan*/  intel_dp_get_config ; 
 int /*<<< orphan*/  intel_dp_get_hw_state ; 
 int /*<<< orphan*/  intel_dp_hotplug ; 
 int /*<<< orphan*/  intel_dp_hpd_pulse ; 
 int /*<<< orphan*/  FUNC6 (struct intel_digital_port*,struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  intel_panel_update_backlight ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_digital_port*) ; 
 struct intel_digital_port* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 void* vlv_disable_dp ; 
 int /*<<< orphan*/  vlv_dp_pre_pll_enable ; 
 void* vlv_enable_dp ; 
 int /*<<< orphan*/  vlv_post_disable_dp ; 
 int /*<<< orphan*/  vlv_pre_enable_dp ; 

bool FUNC12(struct drm_i915_private *dev_priv,
		   i915_reg_t output_reg,
		   enum port port)
{
	struct intel_digital_port *intel_dig_port;
	struct intel_encoder *intel_encoder;
	struct drm_encoder *encoder;
	struct intel_connector *intel_connector;

	intel_dig_port = FUNC10(sizeof(*intel_dig_port), GFP_KERNEL);
	if (!intel_dig_port)
		return false;

	intel_connector = FUNC5();
	if (!intel_connector)
		goto err_connector_alloc;

	intel_encoder = &intel_dig_port->base;
	encoder = &intel_encoder->base;

	if (FUNC3(&dev_priv->drm, &intel_encoder->base,
			     &intel_dp_enc_funcs, DRM_MODE_ENCODER_TMDS,
			     "DP %c", FUNC11(port)))
		goto err_encoder_init;

	intel_encoder->hotplug = intel_dp_hotplug;
	intel_encoder->compute_config = intel_dp_compute_config;
	intel_encoder->get_hw_state = intel_dp_get_hw_state;
	intel_encoder->get_config = intel_dp_get_config;
	intel_encoder->update_pipe = intel_panel_update_backlight;
	intel_encoder->suspend = intel_dp_encoder_suspend;
	if (FUNC0(dev_priv)) {
		intel_encoder->pre_pll_enable = chv_dp_pre_pll_enable;
		intel_encoder->pre_enable = chv_pre_enable_dp;
		intel_encoder->enable = vlv_enable_dp;
		intel_encoder->disable = vlv_disable_dp;
		intel_encoder->post_disable = chv_post_disable_dp;
		intel_encoder->post_pll_disable = chv_dp_post_pll_disable;
	} else if (FUNC1(dev_priv)) {
		intel_encoder->pre_pll_enable = vlv_dp_pre_pll_enable;
		intel_encoder->pre_enable = vlv_pre_enable_dp;
		intel_encoder->enable = vlv_enable_dp;
		intel_encoder->disable = vlv_disable_dp;
		intel_encoder->post_disable = vlv_post_disable_dp;
	} else {
		intel_encoder->pre_enable = g4x_pre_enable_dp;
		intel_encoder->enable = g4x_enable_dp;
		intel_encoder->disable = g4x_disable_dp;
		intel_encoder->post_disable = g4x_post_disable_dp;
	}

	intel_dig_port->dp.output_reg = output_reg;
	intel_dig_port->max_lanes = 4;

	intel_encoder->type = INTEL_OUTPUT_DP;
	intel_encoder->power_domain = FUNC8(port);
	if (FUNC0(dev_priv)) {
		if (port == PORT_D)
			intel_encoder->crtc_mask = 1 << 2;
		else
			intel_encoder->crtc_mask = (1 << 0) | (1 << 1);
	} else {
		intel_encoder->crtc_mask = (1 << 0) | (1 << 1) | (1 << 2);
	}
	intel_encoder->cloneable = 0;
	intel_encoder->port = port;

	intel_dig_port->hpd_pulse = intel_dp_hpd_pulse;

	if (port != PORT_A)
		FUNC7(intel_dig_port);

	intel_dig_port->aux_ch = FUNC4(dev_priv, port);
	if (!FUNC6(intel_dig_port, intel_connector))
		goto err_init_connector;

	return true;

err_init_connector:
	FUNC2(encoder);
err_encoder_init:
	FUNC9(intel_connector);
err_connector_alloc:
	FUNC9(intel_dig_port);
	return false;
}