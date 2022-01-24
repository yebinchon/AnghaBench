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
struct intel_encoder {int port; } ;
struct intel_crtc_state {struct icl_port_dpll* icl_port_dplls; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct intel_atomic_state {int dummy; } ;
struct icl_port_dpll {int /*<<< orphan*/  hw_state; int /*<<< orphan*/  pll; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  DPLL_ID_EHL_DPLL4 ; 
 int /*<<< orphan*/  DPLL_ID_ICL_DPLL0 ; 
 int /*<<< orphan*/  DPLL_ID_ICL_DPLL1 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 size_t ICL_PORT_DPLL_DEFAULT ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int PORT_A ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc_state*,struct intel_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_atomic_state*,struct intel_crtc*,struct intel_encoder*) ; 
 struct intel_crtc_state* FUNC4 (struct intel_atomic_state*,struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_atomic_state*,struct intel_crtc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_atomic_state*,struct intel_crtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(struct intel_atomic_state *state,
				   struct intel_crtc *crtc,
				   struct intel_encoder *encoder)
{
	struct intel_crtc_state *crtc_state =
		FUNC4(state, crtc);
	struct icl_port_dpll *port_dpll =
		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
	struct drm_i915_private *dev_priv = FUNC8(crtc->base.dev);
	enum port port = encoder->port;
	bool has_dpll4 = false;

	if (!FUNC2(crtc_state, encoder, &port_dpll->hw_state)) {
		FUNC0("Could not calculate combo PHY PLL state.\n");

		return false;
	}

	if (FUNC1(dev_priv) && port != PORT_A)
		has_dpll4 = true;

	port_dpll->pll = FUNC5(state, crtc,
						&port_dpll->hw_state,
						DPLL_ID_ICL_DPLL0,
						has_dpll4 ? DPLL_ID_EHL_DPLL4
							  : DPLL_ID_ICL_DPLL1);
	if (!port_dpll->pll) {
		FUNC0("No combo PHY PLL found for port %c\n",
			      FUNC7(encoder->port));
		return false;
	}

	FUNC6(state, crtc,
				    port_dpll->pll, &port_dpll->hw_state);

	FUNC3(state, crtc, encoder);

	return true;
}