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
typedef  unsigned long u64 ;
typedef  unsigned int u32 ;
struct dss_pll_hw {int fint_max; int /*<<< orphan*/  clkdco_min; } ;
struct dss_pll_clock_info {unsigned int n; unsigned int m; unsigned int mf; unsigned int* mX; unsigned int sd; unsigned long fint; unsigned long clkdco; unsigned long* clkout; } ;
struct dss_pll {struct dss_pll_hw* hw; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned long,...) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long,int) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

bool FUNC5(const struct dss_pll *pll, unsigned long clkin,
	unsigned long target_clkout, struct dss_pll_clock_info *cinfo)
{
	unsigned long fint, clkdco, clkout;
	unsigned long target_clkdco;
	unsigned long min_dco;
	unsigned int n, m, mf, m2, sd;
	const struct dss_pll_hw *hw = pll->hw;

	FUNC1("clkin %lu, target clkout %lu\n", clkin, target_clkout);

	/* Fint */
	n = FUNC0(clkin, hw->fint_max);
	fint = clkin / n;

	/* adjust m2 so that the clkdco will be high enough */
	min_dco = FUNC4(hw->clkdco_min, fint);
	m2 = FUNC0(min_dco, target_clkout);
	if (m2 == 0)
		m2 = 1;

	target_clkdco = target_clkout * m2;
	m = target_clkdco / fint;

	clkdco = fint * m;

	/* adjust clkdco with fractional mf */
	if (FUNC2(target_clkdco - clkdco > fint))
		mf = 0;
	else
		mf = (u32)FUNC3(262144ull * (target_clkdco - clkdco), fint);

	if (mf > 0)
		clkdco += (u32)FUNC3((u64)mf * fint, 262144);

	clkout = clkdco / m2;

	/* sigma-delta */
	sd = FUNC0(fint * m, 250000000);

	FUNC1("N = %u, M = %u, M.f = %u, M2 = %u, SD = %u\n",
		n, m, mf, m2, sd);
	FUNC1("Fint %lu, clkdco %lu, clkout %lu\n", fint, clkdco, clkout);

	cinfo->n = n;
	cinfo->m = m;
	cinfo->mf = mf;
	cinfo->mX[0] = m2;
	cinfo->sd = sd;

	cinfo->fint = fint;
	cinfo->clkdco = clkdco;
	cinfo->clkout[0] = clkout;

	return true;
}