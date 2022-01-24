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
struct intel_encoder {int /*<<< orphan*/  port; } ;
struct intel_crtc_state {struct icl_port_dpll* icl_port_dplls; } ;
struct intel_crtc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_atomic_state {TYPE_1__ base; } ;
struct icl_port_dpll {void* pll; int /*<<< orphan*/  hw_state; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;

/* Variables and functions */
 int DPLL_ID_ICL_TBTPLL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t ICL_PORT_DPLL_DEFAULT ; 
 size_t ICL_PORT_DPLL_MG_PHY ; 
 int /*<<< orphan*/  FUNC1 (struct intel_crtc_state*,struct intel_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc_state*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_atomic_state*,struct intel_crtc*,struct intel_encoder*) ; 
 struct intel_crtc_state* FUNC5 (struct intel_atomic_state*,struct intel_crtc*) ; 
 void* FUNC6 (struct intel_atomic_state*,struct intel_crtc*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_atomic_state*,struct intel_crtc*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_atomic_state*,struct intel_crtc*,void*) ; 
 struct drm_i915_private* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC11(struct intel_atomic_state *state,
				 struct intel_crtc *crtc,
				 struct intel_encoder *encoder)
{
	struct drm_i915_private *dev_priv = FUNC10(state->base.dev);
	struct intel_crtc_state *crtc_state =
		FUNC5(state, crtc);
	struct icl_port_dpll *port_dpll;
	enum intel_dpll_id dpll_id;

	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
	if (!FUNC1(crtc_state, encoder, &port_dpll->hw_state)) {
		FUNC0("Could not calculate TBT PLL state.\n");
		return false;
	}

	port_dpll->pll = FUNC6(state, crtc,
						&port_dpll->hw_state,
						DPLL_ID_ICL_TBTPLL,
						DPLL_ID_ICL_TBTPLL);
	if (!port_dpll->pll) {
		FUNC0("No TBT-ALT PLL found\n");
		return false;
	}
	FUNC8(state, crtc,
				    port_dpll->pll, &port_dpll->hw_state);


	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
	if (!FUNC2(crtc_state, &port_dpll->hw_state)) {
		FUNC0("Could not calculate MG PHY PLL state.\n");
		goto err_unreference_tbt_pll;
	}

	dpll_id = FUNC3(FUNC7(dev_priv,
							 encoder->port));
	port_dpll->pll = FUNC6(state, crtc,
						&port_dpll->hw_state,
						dpll_id,
						dpll_id);
	if (!port_dpll->pll) {
		FUNC0("No MG PHY PLL found\n");
		goto err_unreference_tbt_pll;
	}
	FUNC8(state, crtc,
				    port_dpll->pll, &port_dpll->hw_state);

	FUNC4(state, crtc, encoder);

	return true;

err_unreference_tbt_pll:
	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
	FUNC9(state, crtc, port_dpll->pll);

	return false;
}