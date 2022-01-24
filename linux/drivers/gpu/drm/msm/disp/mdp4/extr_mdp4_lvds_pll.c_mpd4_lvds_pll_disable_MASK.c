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
struct mdp4_lvds_pll {int dummy; } ;
struct mdp4_kms {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  REG_MDP4_LVDS_PHY_CFG0 ; 
 int /*<<< orphan*/  REG_MDP4_LVDS_PHY_PLL_CTRL_0 ; 
 struct mdp4_kms* FUNC1 (struct mdp4_lvds_pll*) ; 
 int /*<<< orphan*/  FUNC2 (struct mdp4_kms*,int /*<<< orphan*/ ,int) ; 
 struct mdp4_lvds_pll* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC4(struct clk_hw *hw)
{
	struct mdp4_lvds_pll *lvds_pll = FUNC3(hw);
	struct mdp4_kms *mdp4_kms = FUNC1(lvds_pll);

	FUNC0("");

	FUNC2(mdp4_kms, REG_MDP4_LVDS_PHY_CFG0, 0x0);
	FUNC2(mdp4_kms, REG_MDP4_LVDS_PHY_PLL_CTRL_0, 0x0);
}