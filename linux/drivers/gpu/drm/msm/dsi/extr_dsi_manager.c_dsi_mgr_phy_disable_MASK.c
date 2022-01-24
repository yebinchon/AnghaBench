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
struct msm_dsi {int phy_enabled; int /*<<< orphan*/  phy; } ;

/* Variables and functions */
 int DSI_CLOCK_MASTER ; 
 int DSI_CLOCK_SLAVE ; 
 scalar_t__ FUNC0 () ; 
 struct msm_dsi* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(int id)
{
	struct msm_dsi *msm_dsi = FUNC1(id);
	struct msm_dsi *mdsi = FUNC1(DSI_CLOCK_MASTER);
	struct msm_dsi *sdsi = FUNC1(DSI_CLOCK_SLAVE);

	/* disable DSI phy
	 * In dual-dsi configuration, the phy should be disabled for the
	 * first controller only when the second controller is disabled.
	 */
	msm_dsi->phy_enabled = false;
	if (FUNC0() && mdsi && sdsi) {
		if (!mdsi->phy_enabled && !sdsi->phy_enabled) {
			FUNC2(sdsi->phy);
			FUNC2(mdsi->phy);
		}
	} else {
		FUNC2(msm_dsi->phy);
	}
}