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
struct dw_mipi_dsi {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DSI_PHY_RSTZ ; 
 scalar_t__ DSI_PHY_STATUS ; 
 int PHY_ENABLECLK ; 
 int PHY_ENFORCEPLL ; 
 int PHY_LOCK ; 
 int /*<<< orphan*/  PHY_STATUS_TIMEOUT_US ; 
 int PHY_STOP_STATE_CLK_LANE ; 
 int PHY_UNRSTZ ; 
 int PHY_UNSHUTDOWNZ ; 
 int /*<<< orphan*/  FUNC1 (struct dw_mipi_dsi*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dw_mipi_dsi *dsi)
{
	u32 val;
	int ret;

	FUNC1(dsi, DSI_PHY_RSTZ, PHY_ENFORCEPLL | PHY_ENABLECLK |
		  PHY_UNRSTZ | PHY_UNSHUTDOWNZ);

	ret = FUNC2(dsi->base + DSI_PHY_STATUS, val,
				 val & PHY_LOCK, 1000, PHY_STATUS_TIMEOUT_US);
	if (ret)
		FUNC0("failed to wait phy lock state\n");

	ret = FUNC2(dsi->base + DSI_PHY_STATUS,
				 val, val & PHY_STOP_STATE_CLK_LANE, 1000,
				 PHY_STATUS_TIMEOUT_US);
	if (ret)
		FUNC0("failed to wait phy clk lane stop state\n");
}