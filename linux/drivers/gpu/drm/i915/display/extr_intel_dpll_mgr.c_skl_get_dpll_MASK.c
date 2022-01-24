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
struct intel_crtc_state {struct intel_shared_dpll* shared_dpll; int /*<<< orphan*/  dpll_hw_state; } ;
struct intel_crtc {int dummy; } ;
struct intel_atomic_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPLL_ID_SKL_DPLL0 ; 
 int /*<<< orphan*/  DPLL_ID_SKL_DPLL1 ; 
 int /*<<< orphan*/  DPLL_ID_SKL_DPLL3 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_EDP ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
 struct intel_crtc_state* FUNC1 (struct intel_atomic_state*,struct intel_crtc*) ; 
 scalar_t__ FUNC2 (struct intel_crtc_state*) ; 
 scalar_t__ FUNC3 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 struct intel_shared_dpll* FUNC4 (struct intel_atomic_state*,struct intel_crtc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_atomic_state*,struct intel_crtc*,struct intel_shared_dpll*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct intel_crtc_state*) ; 
 int FUNC7 (struct intel_crtc_state*) ; 

__attribute__((used)) static bool FUNC8(struct intel_atomic_state *state,
			 struct intel_crtc *crtc,
			 struct intel_encoder *encoder)
{
	struct intel_crtc_state *crtc_state =
		FUNC1(state, crtc);
	struct intel_shared_dpll *pll;
	bool bret;

	if (FUNC3(crtc_state, INTEL_OUTPUT_HDMI)) {
		bret = FUNC7(crtc_state);
		if (!bret) {
			FUNC0("Could not get HDMI pll dividers.\n");
			return false;
		}
	} else if (FUNC2(crtc_state)) {
		bret = FUNC6(crtc_state);
		if (!bret) {
			FUNC0("Could not set DP dpll HW state.\n");
			return false;
		}
	} else {
		return false;
	}

	if (FUNC3(crtc_state, INTEL_OUTPUT_EDP))
		pll = FUNC4(state, crtc,
					     &crtc_state->dpll_hw_state,
					     DPLL_ID_SKL_DPLL0,
					     DPLL_ID_SKL_DPLL0);
	else
		pll = FUNC4(state, crtc,
					     &crtc_state->dpll_hw_state,
					     DPLL_ID_SKL_DPLL1,
					     DPLL_ID_SKL_DPLL3);
	if (!pll)
		return false;

	FUNC5(state, crtc,
				    pll, &crtc_state->dpll_hw_state);

	crtc_state->shared_dpll = pll;

	return true;
}