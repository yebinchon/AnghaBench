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
typedef  int /*<<< orphan*/  u8 ;
struct dw_mipi_dsi_rockchip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_PHY_TST_CTRL0 ; 
 int /*<<< orphan*/  DSI_PHY_TST_CTRL1 ; 
 int PHY_TESTCLK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int PHY_TESTEN ; 
 int PHY_UNTESTCLK ; 
 int PHY_UNTESTCLR ; 
 int PHY_UNTESTEN ; 
 int /*<<< orphan*/  FUNC2 (struct dw_mipi_dsi_rockchip*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct dw_mipi_dsi_rockchip *dsi,
				  u8 test_code,
				  u8 test_data)
{
	/*
	 * With the falling edge on TESTCLK, the TESTDIN[7:0] signal content
	 * is latched internally as the current test code. Test data is
	 * programmed internally by rising edge on TESTCLK.
	 */
	FUNC2(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);

	FUNC2(dsi, DSI_PHY_TST_CTRL1, PHY_TESTEN | FUNC1(0) |
					  FUNC0(test_code));

	FUNC2(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR);

	FUNC2(dsi, DSI_PHY_TST_CTRL1, PHY_UNTESTEN | FUNC1(0) |
					  FUNC0(test_data));

	FUNC2(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);
}