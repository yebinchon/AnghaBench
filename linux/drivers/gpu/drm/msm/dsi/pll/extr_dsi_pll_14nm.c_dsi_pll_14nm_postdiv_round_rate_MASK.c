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
struct dsi_pll_14nm_postdiv {int /*<<< orphan*/  flags; int /*<<< orphan*/  width; struct dsi_pll_14nm* pll; } ;
struct dsi_pll_14nm {int /*<<< orphan*/  id; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 long FUNC1 (struct clk_hw*,unsigned long,unsigned long*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dsi_pll_14nm_postdiv* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC3(struct clk_hw *hw,
					    unsigned long rate,
					    unsigned long *prate)
{
	struct dsi_pll_14nm_postdiv *postdiv = FUNC2(hw);
	struct dsi_pll_14nm *pll_14nm = postdiv->pll;

	FUNC0("DSI%d PLL parent rate=%lu", pll_14nm->id, rate);

	return FUNC1(hw, rate, prate, NULL,
				  postdiv->width,
				  postdiv->flags);
}