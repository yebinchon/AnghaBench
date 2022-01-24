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
struct msm_dsi_host {int dummy; } ;

/* Variables and functions */
 int DSI_CLK_CTRL_ENABLE_CLKS ; 
 int DSI_CTRL_ENABLE ; 
 int /*<<< orphan*/  DSI_RESET_TOGGLE_DELAY_MS ; 
 int /*<<< orphan*/  REG_DSI_CLK_CTRL ; 
 int /*<<< orphan*/  REG_DSI_CTRL ; 
 int /*<<< orphan*/  REG_DSI_RESET ; 
 int FUNC0 (struct msm_dsi_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_dsi_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct msm_dsi_host *msm_host)
{
	u32 data0, data1;

	data0 = FUNC0(msm_host, REG_DSI_CTRL);
	data1 = data0;
	data1 &= ~DSI_CTRL_ENABLE;
	FUNC1(msm_host, REG_DSI_CTRL, data1);
	/*
	 * dsi controller need to be disabled before
	 * clocks turned on
	 */
	FUNC3();

	FUNC1(msm_host, REG_DSI_CLK_CTRL, DSI_CLK_CTRL_ENABLE_CLKS);
	FUNC3();	/* make sure clocks enabled */

	/* dsi controller can only be reset while clocks are running */
	FUNC1(msm_host, REG_DSI_RESET, 1);
	FUNC2(DSI_RESET_TOGGLE_DELAY_MS); /* make sure reset happen */
	FUNC1(msm_host, REG_DSI_RESET, 0);
	FUNC3();	/* controller out of reset */
	FUNC1(msm_host, REG_DSI_CTRL, data0);
	FUNC3();	/* make sure dsi controller enabled again */
}