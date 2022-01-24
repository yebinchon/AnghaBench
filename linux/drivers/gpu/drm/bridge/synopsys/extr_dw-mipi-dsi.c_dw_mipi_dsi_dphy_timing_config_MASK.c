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
struct dw_mipi_dsi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_PHY_TMR_CFG ; 
 int /*<<< orphan*/  DSI_PHY_TMR_LPCLK_CFG ; 
 int /*<<< orphan*/  DSI_PHY_TMR_RD_CFG ; 
 int /*<<< orphan*/  DSI_VERSION ; 
 int HWVER_131 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int VERSION ; 
 int FUNC8 (struct dw_mipi_dsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dw_mipi_dsi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct dw_mipi_dsi *dsi)
{
	u32 hw_version;

	/*
	 * TODO dw drv improvements
	 * data & clock lane timers should be computed according to panel
	 * blankings and to the automatic clock lane control mode...
	 * note: DSI_PHY_TMR_CFG.MAX_RD_TIME should be in line with
	 * DSI_CMD_MODE_CFG.MAX_RD_PKT_SIZE_LP (see CMD_MODE_ALL_LP)
	 */

	hw_version = FUNC8(dsi, DSI_VERSION) & VERSION;

	if (hw_version >= HWVER_131) {
		FUNC9(dsi, DSI_PHY_TMR_CFG, FUNC5(0x40) |
			  FUNC7(0x40));
		FUNC9(dsi, DSI_PHY_TMR_RD_CFG, FUNC1(10000));
	} else {
		FUNC9(dsi, DSI_PHY_TMR_CFG, FUNC4(0x40) |
			  FUNC6(0x40) | FUNC0(10000));
	}

	FUNC9(dsi, DSI_PHY_TMR_LPCLK_CFG, FUNC2(0x40)
		  | FUNC3(0x40));
}