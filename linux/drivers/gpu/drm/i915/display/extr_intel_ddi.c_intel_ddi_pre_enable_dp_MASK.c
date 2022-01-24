#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int port; int /*<<< orphan*/  type; TYPE_1__ base; } ;
struct intel_dp {int dummy; } ;
struct intel_digital_port {scalar_t__ tc_mode; int saved_port_bits; int /*<<< orphan*/  ddi_io_power_domain; } ;
struct intel_crtc_state {int /*<<< orphan*/  lane_count; int /*<<< orphan*/  port_clock; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 int DDI_BUF_PORT_REVERSAL ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_ON ; 
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_DP_MST ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int PORT_A ; 
 int PORT_E ; 
 scalar_t__ TC_PORT_TBT_ALT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_encoder*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_encoder*,int,int /*<<< orphan*/ ) ; 
 struct intel_digital_port* FUNC6 (TYPE_1__*) ; 
 struct intel_dp* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_encoder*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct intel_crtc_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 int FUNC15 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC17 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct intel_dp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct intel_dp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct intel_dp*,struct intel_crtc_state const*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct intel_dp*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC24 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC25 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC26 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC27 (struct intel_dp*) ; 
 scalar_t__ FUNC28 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct drm_i915_private*,int) ; 
 int FUNC30 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 struct drm_i915_private* FUNC32 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC33(struct intel_encoder *encoder,
				    const struct intel_crtc_state *crtc_state,
				    const struct drm_connector_state *conn_state)
{
	struct intel_dp *intel_dp = FUNC7(&encoder->base);
	struct drm_i915_private *dev_priv = FUNC32(encoder->base.dev);
	enum port port = encoder->port;
	enum phy phy = FUNC30(dev_priv, port);
	struct intel_digital_port *dig_port = FUNC6(&encoder->base);
	bool is_mst = FUNC13(crtc_state, INTEL_OUTPUT_DP_MST);
	int level = FUNC15(intel_dp);

	FUNC3(is_mst && (port == PORT_A || port == PORT_E));

	FUNC20(intel_dp, crtc_state->port_clock,
				 crtc_state->lane_count, is_mst);

	FUNC27(intel_dp);

	FUNC14(encoder, crtc_state);

	if (!FUNC29(dev_priv, phy) ||
	    dig_port->tc_mode != TC_PORT_TBT_ALT)
		FUNC19(dev_priv,
					dig_port->ddi_io_power_domain);

	FUNC11(dig_port);
	FUNC9(dig_port);

	if (FUNC0(dev_priv) >= 11)
		FUNC8(encoder, crtc_state->port_clock,
					level, encoder->type);
	else if (FUNC1(dev_priv))
		FUNC5(encoder, level, encoder->type);
	else if (FUNC2(dev_priv))
		FUNC4(encoder, level, encoder->type);
	else
		FUNC31(encoder, crtc_state);

	if (FUNC28(dev_priv, phy)) {
		bool lane_reversal =
			dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;

		FUNC12(dev_priv, phy, false,
					       crtc_state->lane_count,
					       lane_reversal);
	}

	FUNC18(encoder);
	if (!is_mst)
		FUNC21(intel_dp, DRM_MODE_DPMS_ON);
	FUNC22(intel_dp, crtc_state,
					      true);
	FUNC23(intel_dp, crtc_state);
	FUNC24(intel_dp);
	if (port != PORT_A || FUNC0(dev_priv) >= 9)
		FUNC25(intel_dp);

	FUNC16(encoder, crtc_state);

	FUNC10(dig_port);

	if (!is_mst)
		FUNC17(crtc_state);

	FUNC26(encoder, crtc_state);
}