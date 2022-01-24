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
struct dibx000_bandwidth_config {int pll_reset; int pll_range; int pll_ratio; int pll_prediv; int pll_bypass; int modulo; int ADClkSrc; int IO_CLK_en_core; int bypclk_div; int enable_refdiv; int internal; int ifreq; int sad_cfg; } ;
struct TYPE_2__ {struct dibx000_bandwidth_config* bw; } ;
struct dib7000p_state {scalar_t__ version; TYPE_1__ cfg; } ;

/* Variables and functions */
 scalar_t__ SOC7090 ; 
 int FUNC0 (struct dib7000p_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib7000p_state*,int,int) ; 

__attribute__((used)) static void FUNC2(struct dib7000p_state *state)
{
	struct dibx000_bandwidth_config *bw = &state->cfg.bw[0];
	u16 clk_cfg0;

	if (state->version == SOC7090) {
		FUNC1(state, 1856, (!bw->pll_reset << 13) | (bw->pll_range << 12) | (bw->pll_ratio << 6) | (bw->pll_prediv));

		while (((FUNC0(state, 1856) >> 15) & 0x1) != 1)
			;

		FUNC1(state, 1857, FUNC0(state, 1857) | (!bw->pll_bypass << 15));
	} else {
		/* force PLL bypass */
		clk_cfg0 = (1 << 15) | ((bw->pll_ratio & 0x3f) << 9) |
			(bw->modulo << 7) | (bw->ADClkSrc << 6) | (bw->IO_CLK_en_core << 5) | (bw->bypclk_div << 2) | (bw->enable_refdiv << 1) | (0 << 0);

		FUNC1(state, 900, clk_cfg0);

		/* P_pll_cfg */
		FUNC1(state, 903, (bw->pll_prediv << 5) | (((bw->pll_ratio >> 6) & 0x3) << 3) | (bw->pll_range << 1) | bw->pll_reset);
		clk_cfg0 = (bw->pll_bypass << 15) | (clk_cfg0 & 0x7fff);
		FUNC1(state, 900, clk_cfg0);
	}

	FUNC1(state, 18, (u16) (((bw->internal * 1000) >> 16) & 0xffff));
	FUNC1(state, 19, (u16) ((bw->internal * 1000) & 0xffff));
	FUNC1(state, 21, (u16) ((bw->ifreq >> 16) & 0xffff));
	FUNC1(state, 22, (u16) ((bw->ifreq) & 0xffff));

	FUNC1(state, 72, bw->sad_cfg);
}