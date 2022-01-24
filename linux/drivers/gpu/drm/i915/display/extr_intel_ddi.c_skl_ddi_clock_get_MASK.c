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
struct intel_encoder {int dummy; } ;
struct intel_dpll_hw_state {int ctrl1; } ;
struct intel_crtc_state {int port_clock; struct intel_dpll_hw_state dpll_hw_state; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  DPLL_CTRL1_LINK_RATE_1080 133 
#define  DPLL_CTRL1_LINK_RATE_1350 132 
#define  DPLL_CTRL1_LINK_RATE_1620 131 
#define  DPLL_CTRL1_LINK_RATE_2160 130 
#define  DPLL_CTRL1_LINK_RATE_2700 129 
#define  DPLL_CTRL1_LINK_RATE_810 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc_state*) ; 
 int FUNC5 (struct intel_dpll_hw_state*) ; 

__attribute__((used)) static void FUNC6(struct intel_encoder *encoder,
			      struct intel_crtc_state *pipe_config)
{
	struct intel_dpll_hw_state *pll_state = &pipe_config->dpll_hw_state;
	int link_clock;

	/*
	 * ctrl1 register is already shifted for each pll, just use 0 to get
	 * the internal shift for each field
	 */
	if (pll_state->ctrl1 & FUNC0(0)) {
		link_clock = FUNC5(pll_state);
	} else {
		link_clock = pll_state->ctrl1 & FUNC1(0);
		link_clock >>= FUNC2(0);

		switch (link_clock) {
		case DPLL_CTRL1_LINK_RATE_810:
			link_clock = 81000;
			break;
		case DPLL_CTRL1_LINK_RATE_1080:
			link_clock = 108000;
			break;
		case DPLL_CTRL1_LINK_RATE_1350:
			link_clock = 135000;
			break;
		case DPLL_CTRL1_LINK_RATE_1620:
			link_clock = 162000;
			break;
		case DPLL_CTRL1_LINK_RATE_2160:
			link_clock = 216000;
			break;
		case DPLL_CTRL1_LINK_RATE_2700:
			link_clock = 270000;
			break;
		default:
			FUNC3(1, "Unsupported link rate\n");
			break;
		}
		link_clock *= 2;
	}

	pipe_config->port_clock = link_clock;

	FUNC4(pipe_config);
}