#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct vc4_dsi {int mode_flags; int lanes; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DSI1_STAT_PHY_CLOCK_STOP ; 
 int DSI1_STAT_PHY_CLOCK_ULPS ; 
 int DSI1_STAT_PHY_D0_STOP ; 
 int DSI1_STAT_PHY_D0_ULPS ; 
 int DSI1_STAT_PHY_D1_STOP ; 
 int DSI1_STAT_PHY_D1_ULPS ; 
 int DSI1_STAT_PHY_D2_STOP ; 
 int DSI1_STAT_PHY_D2_ULPS ; 
 int DSI1_STAT_PHY_D3_STOP ; 
 int DSI1_STAT_PHY_D3_ULPS ; 
 int DSI_PHYC_DLANE0_ULPS ; 
 int DSI_PHYC_DLANE1_ULPS ; 
 int DSI_PHYC_DLANE2_ULPS ; 
 int DSI_PHYC_DLANE3_ULPS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int MIPI_DSI_CLOCK_NON_CONTINUOUS ; 
 int /*<<< orphan*/  PHYC ; 
 int /*<<< orphan*/  PHYC_CLANE_ULPS ; 
 int /*<<< orphan*/  PHY_AFEC0 ; 
 int /*<<< orphan*/  PHY_AFEC0_LATCH_ULPS ; 
 int /*<<< orphan*/  STAT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vc4_dsi*,int) ; 
 int FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct vc4_dsi *dsi, bool ulps)
{
	bool non_continuous = dsi->mode_flags & MIPI_DSI_CLOCK_NON_CONTINUOUS;
	u32 phyc_ulps = ((non_continuous ? FUNC0(PHYC_CLANE_ULPS) : 0) |
			 DSI_PHYC_DLANE0_ULPS |
			 (dsi->lanes > 1 ? DSI_PHYC_DLANE1_ULPS : 0) |
			 (dsi->lanes > 2 ? DSI_PHYC_DLANE2_ULPS : 0) |
			 (dsi->lanes > 3 ? DSI_PHYC_DLANE3_ULPS : 0));
	u32 stat_ulps = ((non_continuous ? DSI1_STAT_PHY_CLOCK_ULPS : 0) |
			 DSI1_STAT_PHY_D0_ULPS |
			 (dsi->lanes > 1 ? DSI1_STAT_PHY_D1_ULPS : 0) |
			 (dsi->lanes > 2 ? DSI1_STAT_PHY_D2_ULPS : 0) |
			 (dsi->lanes > 3 ? DSI1_STAT_PHY_D3_ULPS : 0));
	u32 stat_stop = ((non_continuous ? DSI1_STAT_PHY_CLOCK_STOP : 0) |
			 DSI1_STAT_PHY_D0_STOP |
			 (dsi->lanes > 1 ? DSI1_STAT_PHY_D1_STOP : 0) |
			 (dsi->lanes > 2 ? DSI1_STAT_PHY_D2_STOP : 0) |
			 (dsi->lanes > 3 ? DSI1_STAT_PHY_D3_STOP : 0));
	int ret;
	bool ulps_currently_enabled = (FUNC1(PHY_AFEC0) &
				       FUNC0(PHY_AFEC0_LATCH_ULPS));

	if (ulps == ulps_currently_enabled)
		return;

	FUNC2(STAT, stat_ulps);
	FUNC2(PHYC, FUNC1(PHYC) | phyc_ulps);
	ret = FUNC5((FUNC1(STAT) & stat_ulps) == stat_ulps, 200);
	if (ret) {
		FUNC3(&dsi->pdev->dev,
			 "Timeout waiting for DSI ULPS entry: STAT 0x%08x",
			 FUNC1(STAT));
		FUNC2(PHYC, FUNC1(PHYC) & ~phyc_ulps);
		FUNC4(dsi, false);
		return;
	}

	/* The DSI module can't be disabled while the module is
	 * generating ULPS state.  So, to be able to disable the
	 * module, we have the AFE latch the ULPS state and continue
	 * on to having the module enter STOP.
	 */
	FUNC4(dsi, ulps);

	FUNC2(STAT, stat_stop);
	FUNC2(PHYC, FUNC1(PHYC) & ~phyc_ulps);
	ret = FUNC5((FUNC1(STAT) & stat_stop) == stat_stop, 200);
	if (ret) {
		FUNC3(&dsi->pdev->dev,
			 "Timeout waiting for DSI STOP entry: STAT 0x%08x",
			 FUNC1(STAT));
		FUNC2(PHYC, FUNC1(PHYC) & ~phyc_ulps);
		return;
	}
}