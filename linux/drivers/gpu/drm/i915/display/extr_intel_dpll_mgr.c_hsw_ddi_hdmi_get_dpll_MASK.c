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
typedef  int u32 ;
struct intel_shared_dpll {int dummy; } ;
struct TYPE_2__ {int wrpll; } ;
struct intel_crtc_state {int port_clock; TYPE_1__ dpll_hw_state; } ;
struct intel_crtc {int dummy; } ;
struct intel_atomic_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPLL_ID_WRPLL1 ; 
 int /*<<< orphan*/  DPLL_ID_WRPLL2 ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int WRPLL_PLL_ENABLE ; 
 int WRPLL_REF_LCPLL ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int*,unsigned int*,unsigned int*) ; 
 struct intel_crtc_state* FUNC4 (struct intel_atomic_state*,struct intel_crtc*) ; 
 struct intel_shared_dpll* FUNC5 (struct intel_atomic_state*,struct intel_crtc*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct intel_shared_dpll *
FUNC6(struct intel_atomic_state *state,
		      struct intel_crtc *crtc)
{
	struct intel_crtc_state *crtc_state =
		FUNC4(state, crtc);
	struct intel_shared_dpll *pll;
	u32 val;
	unsigned int p, n2, r2;

	FUNC3(crtc_state->port_clock * 1000, &r2, &n2, &p);

	val = WRPLL_PLL_ENABLE | WRPLL_REF_LCPLL |
	      FUNC2(r2) | FUNC0(n2) |
	      FUNC1(p);

	crtc_state->dpll_hw_state.wrpll = val;

	pll = FUNC5(state, crtc,
				     &crtc_state->dpll_hw_state,
				     DPLL_ID_WRPLL1, DPLL_ID_WRPLL2);

	if (!pll)
		return NULL;

	return pll;
}