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
typedef  int u32 ;
struct dsi_pll_10nm {scalar_t__ mmio; scalar_t__ phy_cmn_mmio; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ REG_DSI_10nm_PHY_CMN_CTRL_0 ; 
 scalar_t__ REG_DSI_10nm_PHY_PLL_SYSTEM_MUXES ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct dsi_pll_10nm *pll)
{
	u32 data = FUNC2(pll->phy_cmn_mmio + REG_DSI_10nm_PHY_CMN_CTRL_0);

	FUNC3(pll->phy_cmn_mmio + REG_DSI_10nm_PHY_CMN_CTRL_0,
		  data | FUNC0(5));
	FUNC3(pll->mmio + REG_DSI_10nm_PHY_PLL_SYSTEM_MUXES, 0xc0);
	FUNC1(250);
}