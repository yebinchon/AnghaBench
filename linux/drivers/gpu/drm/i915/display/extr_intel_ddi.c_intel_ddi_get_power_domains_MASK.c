#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_2__ base; int /*<<< orphan*/  port; } ;
struct intel_digital_port {int /*<<< orphan*/  ddi_io_power_domain; } ;
struct TYPE_3__ {scalar_t__ compression_enable; } ;
struct intel_crtc_state {TYPE_1__ dsc_params; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_OUTPUT_DP_MST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct intel_digital_port* FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_crtc_state*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*,int) ; 
 int FUNC8 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct intel_encoder *encoder,
					struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC9(encoder->base.dev);
	struct intel_digital_port *dig_port;
	enum phy phy = FUNC8(dev_priv, encoder->port);

	/*
	 * TODO: Add support for MST encoders. Atm, the following should never
	 * happen since fake-MST encoders don't set their get_power_domains()
	 * hook.
	 */
	if (FUNC0(FUNC3(crtc_state, INTEL_OUTPUT_DP_MST)))
		return;

	dig_port = FUNC1(&encoder->base);
	FUNC5(dev_priv, dig_port->ddi_io_power_domain);

	/*
	 * AUX power is only needed for (e)DP mode, and for HDMI mode on TC
	 * ports.
	 */
	if (FUNC2(crtc_state) ||
	    FUNC7(dev_priv, phy))
		FUNC5(dev_priv,
					FUNC4(dig_port));

	/*
	 * VDSC power is needed when DSC is enabled
	 */
	if (crtc_state->dsc_params.compression_enable)
		FUNC5(dev_priv,
					FUNC6(crtc_state));
}