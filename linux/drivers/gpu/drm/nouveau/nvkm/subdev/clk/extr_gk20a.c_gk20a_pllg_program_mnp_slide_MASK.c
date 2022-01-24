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
struct gk20a_pll {scalar_t__ m; scalar_t__ pl; void* n; } ;
struct gk20a_clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gk20a_clk*) ; 
 void* FUNC1 (struct gk20a_clk*,struct gk20a_pll*) ; 
 int FUNC2 (struct gk20a_clk*,struct gk20a_pll*) ; 
 int /*<<< orphan*/  FUNC3 (struct gk20a_clk*,struct gk20a_pll*) ; 
 int FUNC4 (struct gk20a_clk*,void*) ; 

__attribute__((used)) static int
FUNC5(struct gk20a_clk *clk, const struct gk20a_pll *pll)
{
	struct gk20a_pll cur_pll;
	int ret;

	if (FUNC0(clk)) {
		FUNC3(clk, &cur_pll);

		/* just do NDIV slide if there is no change to M and PL */
		if (pll->m == cur_pll.m && pll->pl == cur_pll.pl)
			return FUNC4(clk, pll->n);

		/* slide down to current NDIV_LO */
		cur_pll.n = FUNC1(clk, &cur_pll);
		ret = FUNC4(clk, cur_pll.n);
		if (ret)
			return ret;
	}

	/* program MNP with the new clock parameters and new NDIV_LO */
	cur_pll = *pll;
	cur_pll.n = FUNC1(clk, &cur_pll);
	ret = FUNC2(clk, &cur_pll);
	if (ret)
		return ret;

	/* slide up to new NDIV */
	return FUNC4(clk, pll->n);
}