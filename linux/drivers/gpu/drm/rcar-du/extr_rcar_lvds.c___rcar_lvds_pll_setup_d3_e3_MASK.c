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
struct TYPE_2__ {int /*<<< orphan*/  extal; int /*<<< orphan*/ * dotclkin; } ;
struct rcar_lvds {TYPE_1__ clocks; } ;
struct pll_info {unsigned long diff; int clksel; scalar_t__ pll_e; int div; scalar_t__ pll_m; scalar_t__ pll_n; } ;

/* Variables and functions */
 int /*<<< orphan*/  LVDDIV ; 
 int FUNC0 (int) ; 
 int LVDDIV_DIVRESET ; 
 int LVDDIV_DIVSEL ; 
 int /*<<< orphan*/  LVDPLLCR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  LVDPLLCR_CKSEL_EXTAL ; 
 int LVDPLLCR_CLKOUT ; 
 int LVDPLLCR_OCKSEL ; 
 int LVDPLLCR_OUTCLKSEL ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int LVDPLLCR_PLLON ; 
 int LVDPLLCR_STP_CLKOUTE ; 
 int /*<<< orphan*/  FUNC5 (struct rcar_lvds*,int /*<<< orphan*/ ,unsigned int,struct pll_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rcar_lvds*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct rcar_lvds *lvds,
					unsigned int freq, bool dot_clock_only)
{
	struct pll_info pll = { .diff = (unsigned long)-1 };
	u32 lvdpllcr;

	FUNC5(lvds, lvds->clocks.dotclkin[0], freq, &pll,
				 FUNC1(0), dot_clock_only);
	FUNC5(lvds, lvds->clocks.dotclkin[1], freq, &pll,
				 FUNC1(1), dot_clock_only);
	FUNC5(lvds, lvds->clocks.extal, freq, &pll,
				 LVDPLLCR_CKSEL_EXTAL, dot_clock_only);

	lvdpllcr = LVDPLLCR_PLLON | pll.clksel | LVDPLLCR_CLKOUT
		 | FUNC4(pll.pll_n - 1) | FUNC3(pll.pll_m - 1);

	if (pll.pll_e > 0)
		lvdpllcr |= LVDPLLCR_STP_CLKOUTE | LVDPLLCR_OUTCLKSEL
			 |  FUNC2(pll.pll_e - 1);

	if (dot_clock_only)
		lvdpllcr |= LVDPLLCR_OCKSEL;

	FUNC6(lvds, LVDPLLCR, lvdpllcr);

	if (pll.div > 1)
		/*
		 * The DIVRESET bit is a misnomer, setting it to 1 deasserts the
		 * divisor reset.
		 */
		FUNC6(lvds, LVDDIV, LVDDIV_DIVSEL |
				LVDDIV_DIVRESET | FUNC0(pll.div - 1));
	else
		FUNC6(lvds, LVDDIV, 0);
}