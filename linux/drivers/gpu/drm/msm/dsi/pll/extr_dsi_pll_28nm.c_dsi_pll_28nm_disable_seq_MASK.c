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
struct msm_dsi_pll {int dummy; } ;
struct dsi_pll_28nm {scalar_t__ mmio; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ REG_DSI_28nm_PHY_PLL_GLB_CFG ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 struct dsi_pll_28nm* FUNC2 (struct msm_dsi_pll*) ; 

__attribute__((used)) static void FUNC3(struct msm_dsi_pll *pll)
{
	struct dsi_pll_28nm *pll_28nm = FUNC2(pll);

	FUNC0("id=%d", pll_28nm->id);
	FUNC1(pll_28nm->mmio + REG_DSI_28nm_PHY_PLL_GLB_CFG, 0x00);
}