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
struct dw_mipi_dsi {int lane_mbps; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_CLKMGR_CFG ; 
 int /*<<< orphan*/  DSI_PWR_UP ; 
 int RESET ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_mipi_dsi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct dw_mipi_dsi *dsi)
{
	/*
	 * The maximum permitted escape clock is 20MHz and it is derived from
	 * lanebyteclk, which is running at "lane_mbps / 8".  Thus we want:
	 *
	 *     (lane_mbps >> 3) / esc_clk_division < 20
	 * which is:
	 *     (lane_mbps >> 3) / 20 > esc_clk_division
	 */
	u32 esc_clk_division = (dsi->lane_mbps >> 3) / 20 + 1;

	FUNC2(dsi, DSI_PWR_UP, RESET);

	/*
	 * TODO dw drv improvements
	 * timeout clock division should be computed with the
	 * high speed transmission counter timeout and byte lane...
	 */
	FUNC2(dsi, DSI_CLKMGR_CFG, FUNC0(10) |
		  FUNC1(esc_clk_division));
}