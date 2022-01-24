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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int /*<<< orphan*/  port; TYPE_1__ base; } ;
struct intel_digital_port {scalar_t__ tc_mode; } ;
struct intel_crtc_state {int /*<<< orphan*/  lane_lat_optim_mask; int /*<<< orphan*/  lane_count; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ TC_PORT_TBT_ALT ; 
 int /*<<< orphan*/  FUNC1 (struct intel_encoder*,int /*<<< orphan*/ ) ; 
 struct intel_digital_port* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct drm_i915_private*,int) ; 
 int FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_digital_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_digital_port*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct intel_encoder *encoder,
			 const struct intel_crtc_state *crtc_state,
			 const struct drm_connector_state *conn_state)
{
	struct drm_i915_private *dev_priv = FUNC10(encoder->base.dev);
	struct intel_digital_port *dig_port = FUNC2(&encoder->base);
	enum phy phy = FUNC7(dev_priv, encoder->port);
	bool is_tc_port = FUNC6(dev_priv, phy);

	if (is_tc_port)
		FUNC8(dig_port, crtc_state->lane_count);

	if (FUNC3(crtc_state) || is_tc_port)
		FUNC5(dev_priv,
					FUNC4(dig_port));

	if (is_tc_port && dig_port->tc_mode != TC_PORT_TBT_ALT)
		/*
		 * Program the lane count for static/dynamic connections on
		 * Type-C ports.  Skip this step for TBT.
		 */
		FUNC9(dig_port, crtc_state->lane_count);
	else if (FUNC0(dev_priv))
		FUNC1(encoder,
						crtc_state->lane_lat_optim_mask);
}