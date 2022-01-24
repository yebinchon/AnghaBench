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
struct dsi_pll_10nm {scalar_t__ phy_cmn_mmio; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ REG_DSI_10nm_PHY_CMN_CLK_CFG1 ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct dsi_pll_10nm *pll)
{
	u32 data;

	data = FUNC1(pll->phy_cmn_mmio + REG_DSI_10nm_PHY_CMN_CLK_CFG1);
	FUNC2(pll->phy_cmn_mmio + REG_DSI_10nm_PHY_CMN_CLK_CFG1,
		  data | FUNC0(5));
}