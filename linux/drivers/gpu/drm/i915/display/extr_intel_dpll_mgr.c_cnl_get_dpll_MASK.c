#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct intel_shared_dpll {int dummy; } ;
struct intel_encoder {int dummy; } ;
struct intel_crtc_state {struct intel_shared_dpll* shared_dpll; int /*<<< orphan*/  dpll_hw_state; int /*<<< orphan*/  output_types; } ;
struct intel_crtc {int dummy; } ;
struct intel_atomic_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPLL_ID_SKL_DPLL0 ; 
 int /*<<< orphan*/  DPLL_ID_SKL_DPLL2 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
 int FUNC1 (struct intel_crtc_state*) ; 
 int FUNC2 (struct intel_crtc_state*) ; 
 struct intel_crtc_state* FUNC3 (struct intel_atomic_state*,struct intel_crtc*) ; 
 scalar_t__ FUNC4 (struct intel_crtc_state*) ; 
 scalar_t__ FUNC5 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 struct intel_shared_dpll* FUNC6 (struct intel_atomic_state*,struct intel_crtc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_atomic_state*,struct intel_crtc*,struct intel_shared_dpll*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC8(struct intel_atomic_state *state,
			 struct intel_crtc *crtc,
			 struct intel_encoder *encoder)
{
	struct intel_crtc_state *crtc_state =
		FUNC3(state, crtc);
	struct intel_shared_dpll *pll;
	bool bret;

	if (FUNC5(crtc_state, INTEL_OUTPUT_HDMI)) {
		bret = FUNC2(crtc_state);
		if (!bret) {
			FUNC0("Could not get HDMI pll dividers.\n");
			return false;
		}
	} else if (FUNC4(crtc_state)) {
		bret = FUNC1(crtc_state);
		if (!bret) {
			FUNC0("Could not set DP dpll HW state.\n");
			return false;
		}
	} else {
		FUNC0("Skip DPLL setup for output_types 0x%x\n",
			      crtc_state->output_types);
		return false;
	}

	pll = FUNC6(state, crtc,
				     &crtc_state->dpll_hw_state,
				     DPLL_ID_SKL_DPLL0,
				     DPLL_ID_SKL_DPLL2);
	if (!pll) {
		FUNC0("No PLL selected\n");
		return false;
	}

	FUNC7(state, crtc,
				    pll, &crtc_state->dpll_hw_state);

	crtc_state->shared_dpll = pll;

	return true;
}