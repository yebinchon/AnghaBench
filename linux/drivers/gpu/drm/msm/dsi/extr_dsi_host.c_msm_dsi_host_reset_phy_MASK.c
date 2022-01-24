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
struct msm_dsi_host {int dummy; } ;
struct mipi_dsi_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DSI_PHY_RESET_RESET ; 
 int /*<<< orphan*/  REG_DSI_PHY_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct msm_dsi_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct msm_dsi_host* FUNC2 (struct mipi_dsi_host*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct mipi_dsi_host *host)
{
	struct msm_dsi_host *msm_host = FUNC2(host);

	FUNC0("");
	FUNC1(msm_host, REG_DSI_PHY_RESET, DSI_PHY_RESET_RESET);
	/* Make sure fully reset */
	FUNC4();
	FUNC3(1000);
	FUNC1(msm_host, REG_DSI_PHY_RESET, 0);
	FUNC3(100);
}