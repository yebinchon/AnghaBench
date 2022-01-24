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
struct tegra_dsi {struct tegra_dsi* slave; } ;
struct mipi_dphy_timing {int hsexit; int hstrail; int hszero; int hsprepare; int clktrail; int clkpost; int clkzero; int lpx; int clkprepare; int clkpre; int taget; int tasure; int tago; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_BTA_TIMING ; 
 int /*<<< orphan*/  DSI_PHY_TIMING_0 ; 
 int /*<<< orphan*/  DSI_PHY_TIMING_1 ; 
 int /*<<< orphan*/  DSI_PHY_TIMING_2 ; 
 int FUNC0 (int,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_dsi*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tegra_dsi *dsi,
				     unsigned long period,
				     const struct mipi_dphy_timing *timing)
{
	u32 value;

	value = FUNC0(timing->hsexit, period, 1) << 24 |
		FUNC0(timing->hstrail, period, 0) << 16 |
		FUNC0(timing->hszero, period, 3) << 8 |
		FUNC0(timing->hsprepare, period, 1);
	FUNC1(dsi, value, DSI_PHY_TIMING_0);

	value = FUNC0(timing->clktrail, period, 1) << 24 |
		FUNC0(timing->clkpost, period, 1) << 16 |
		FUNC0(timing->clkzero, period, 1) << 8 |
		FUNC0(timing->lpx, period, 1);
	FUNC1(dsi, value, DSI_PHY_TIMING_1);

	value = FUNC0(timing->clkprepare, period, 1) << 16 |
		FUNC0(timing->clkpre, period, 1) << 8 |
		FUNC0(0xff * period, period, 0) << 0;
	FUNC1(dsi, value, DSI_PHY_TIMING_2);

	value = FUNC0(timing->taget, period, 1) << 16 |
		FUNC0(timing->tasure, period, 1) << 8 |
		FUNC0(timing->tago, period, 1);
	FUNC1(dsi, value, DSI_BTA_TIMING);

	if (dsi->slave)
		FUNC2(dsi->slave, period, timing);
}