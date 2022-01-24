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
typedef  int u16 ;
struct dibx000_bandwidth_config {int pll_prediv; int pll_ratio; int IO_CLK_en_core; int bypclk_div; int enable_refdiv; int pll_range; int pll_reset; int pll_bypass; scalar_t__ ADClkSrc; int modulo; } ;
struct TYPE_2__ {int refclksel; struct dibx000_bandwidth_config* pll; } ;
struct dib8000_state {int revision; TYPE_1__ cfg; } ;

/* Variables and functions */
 int FUNC0 (struct dib8000_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib8000_state*,struct dibx000_bandwidth_config const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dib8000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static void FUNC4(struct dib8000_state *state)
{
	const struct dibx000_bandwidth_config *pll = state->cfg.pll;
	u16 clk_cfg1, reg;

	if (state->revision != 0x8090) {
		FUNC2(state, 901,
				(pll->pll_prediv << 8) | (pll->pll_ratio << 0));

		clk_cfg1 = (1 << 10) | (0 << 9) | (pll->IO_CLK_en_core << 8) |
			(pll->bypclk_div << 5) | (pll->enable_refdiv << 4) |
			(1 << 3) | (pll->pll_range << 1) |
			(pll->pll_reset << 0);

		FUNC2(state, 902, clk_cfg1);
		clk_cfg1 = (clk_cfg1 & 0xfff7) | (pll->pll_bypass << 3);
		FUNC2(state, 902, clk_cfg1);

		FUNC3("clk_cfg1: 0x%04x\n", clk_cfg1);

		/* smpl_cfg: P_refclksel=2, P_ensmplsel=1 nodivsmpl=1 */
		if (state->cfg.pll->ADClkSrc == 0)
			FUNC2(state, 904,
					(0 << 15) | (0 << 12) | (0 << 10) |
					(pll->modulo << 8) |
					(pll->ADClkSrc << 7) | (0 << 1));
		else if (state->cfg.refclksel != 0)
			FUNC2(state, 904, (0 << 15) | (1 << 12) |
					((state->cfg.refclksel & 0x3) << 10) |
					(pll->modulo << 8) |
					(pll->ADClkSrc << 7) | (0 << 1));
		else
			FUNC2(state, 904, (0 << 15) | (1 << 12) |
					(3 << 10) | (pll->modulo << 8) |
					(pll->ADClkSrc << 7) | (0 << 1));
	} else {
		FUNC2(state, 1856, (!pll->pll_reset<<13) |
				(pll->pll_range<<12) | (pll->pll_ratio<<6) |
				(pll->pll_prediv));

		reg = FUNC0(state, 1857);
		FUNC2(state, 1857, reg|(!pll->pll_bypass<<15));

		reg = FUNC0(state, 1858); /* Force clk out pll /2 */
		FUNC2(state, 1858, reg | 1);

		FUNC2(state, 904, (pll->modulo << 8));
	}

	FUNC1(state, pll);
}