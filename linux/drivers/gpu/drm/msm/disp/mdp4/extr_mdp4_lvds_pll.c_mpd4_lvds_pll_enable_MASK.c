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
struct pll_rate {TYPE_1__* conf; int /*<<< orphan*/  rate; } ;
struct mdp4_lvds_pll {int /*<<< orphan*/  pixclk; } ;
struct mdp4_kms {int dummy; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int val; scalar_t__ reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ REG_MDP4_LCDC_LVDS_PHY_RESET ; 
 scalar_t__ REG_MDP4_LVDS_PHY_PLL_CTRL_0 ; 
 int /*<<< orphan*/  REG_MDP4_LVDS_PHY_PLL_LOCKED ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct pll_rate* FUNC3 (int /*<<< orphan*/ ) ; 
 struct mdp4_kms* FUNC4 (struct mdp4_lvds_pll*) ; 
 int /*<<< orphan*/  FUNC5 (struct mdp4_kms*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mdp4_kms*,scalar_t__,int) ; 
 struct mdp4_lvds_pll* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw)
{
	struct mdp4_lvds_pll *lvds_pll = FUNC7(hw);
	struct mdp4_kms *mdp4_kms = FUNC4(lvds_pll);
	const struct pll_rate *pll_rate = FUNC3(lvds_pll->pixclk);
	int i;

	FUNC0("pixclk=%lu (%lu)", lvds_pll->pixclk, pll_rate->rate);

	if (FUNC1(!pll_rate))
		return -EINVAL;

	FUNC6(mdp4_kms, REG_MDP4_LCDC_LVDS_PHY_RESET, 0x33);

	for (i = 0; pll_rate->conf[i].reg; i++)
		FUNC6(mdp4_kms, pll_rate->conf[i].reg, pll_rate->conf[i].val);

	FUNC6(mdp4_kms, REG_MDP4_LVDS_PHY_PLL_CTRL_0, 0x01);

	/* Wait until LVDS PLL is locked and ready */
	while (!FUNC5(mdp4_kms, REG_MDP4_LVDS_PHY_PLL_LOCKED))
		FUNC2();

	return 0;
}