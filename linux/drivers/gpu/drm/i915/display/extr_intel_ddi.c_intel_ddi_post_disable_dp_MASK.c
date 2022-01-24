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
struct intel_dp {int dummy; } ;
struct intel_digital_port {scalar_t__ tc_mode; int /*<<< orphan*/  ddi_io_power_domain; struct intel_dp dp; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  INTEL_OUTPUT_DP_MST ; 
 scalar_t__ TC_PORT_TBT_ALT ; 
 struct intel_digital_port* FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct intel_crtc_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int) ; 
 int FUNC10 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct intel_encoder *encoder,
				      const struct intel_crtc_state *old_crtc_state,
				      const struct drm_connector_state *old_conn_state)
{
	struct drm_i915_private *dev_priv = FUNC11(encoder->base.dev);
	struct intel_digital_port *dig_port = FUNC0(&encoder->base);
	struct intel_dp *intel_dp = &dig_port->dp;
	bool is_mst = FUNC1(old_crtc_state,
					  INTEL_OUTPUT_DP_MST);
	enum phy phy = FUNC10(dev_priv, encoder->port);

	if (!is_mst) {
		FUNC3(old_crtc_state);
		/*
		 * Power down sink before disabling the port, otherwise we end
		 * up getting interrupts from the sink on detecting link loss.
		 */
		FUNC6(intel_dp, DRM_MODE_DPMS_OFF);
	}

	FUNC4(encoder, old_crtc_state);

	FUNC8(intel_dp);
	FUNC7(intel_dp);

	if (!FUNC9(dev_priv, phy) ||
	    dig_port->tc_mode != TC_PORT_TBT_ALT)
		FUNC5(dev_priv,
						  dig_port->ddi_io_power_domain);

	FUNC2(encoder);
}