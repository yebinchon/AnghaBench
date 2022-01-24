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
struct msm_dsi_pll {int dummy; } ;
struct msm_dsi {int /*<<< orphan*/  host; int /*<<< orphan*/  phy; } ;

/* Variables and functions */
 int DSI_CLOCK_MASTER ; 
 int DSI_CLOCK_SLAVE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct msm_dsi_pll*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  MSM_DSI_PHY_MASTER ; 
 int /*<<< orphan*/  MSM_DSI_PHY_SLAVE ; 
 int /*<<< orphan*/  MSM_DSI_PHY_STANDALONE ; 
 int FUNC3 (struct msm_dsi_pll*) ; 
 struct msm_dsi* FUNC4 (int) ; 
 struct msm_dsi* FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct msm_dsi_pll*) ; 
 struct msm_dsi_pll* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(int id)
{
	struct msm_dsi *msm_dsi = FUNC4(id);
	struct msm_dsi *other_dsi = FUNC5(id);
	struct msm_dsi *clk_master_dsi = FUNC4(DSI_CLOCK_MASTER);
	struct msm_dsi *clk_slave_dsi = FUNC4(DSI_CLOCK_SLAVE);
	struct msm_dsi_pll *src_pll;
	int ret;

	if (!FUNC0()) {
		ret = FUNC6(msm_dsi->host, true);
		if (ret)
			return ret;

		FUNC9(msm_dsi->phy, MSM_DSI_PHY_STANDALONE);
		src_pll = FUNC8(msm_dsi->phy);
		if (FUNC1(src_pll))
			return FUNC3(src_pll);
		ret = FUNC7(msm_dsi->host, src_pll);
	} else if (!other_dsi) {
		ret = 0;
	} else {
		struct msm_dsi *master_link_dsi = FUNC2(id) ?
							msm_dsi : other_dsi;
		struct msm_dsi *slave_link_dsi = FUNC2(id) ?
							other_dsi : msm_dsi;
		/* Register slave host first, so that slave DSI device
		 * has a chance to probe, and do not block the master
		 * DSI device's probe.
		 * Also, do not check defer for the slave host,
		 * because only master DSI device adds the panel to global
		 * panel list. The panel's device is the master DSI device.
		 */
		ret = FUNC6(slave_link_dsi->host, false);
		if (ret)
			return ret;
		ret = FUNC6(master_link_dsi->host, true);
		if (ret)
			return ret;

		/* PLL0 is to drive both 2 DSI link clocks in Dual DSI mode. */
		FUNC9(clk_master_dsi->phy,
					MSM_DSI_PHY_MASTER);
		FUNC9(clk_slave_dsi->phy,
					MSM_DSI_PHY_SLAVE);
		src_pll = FUNC8(clk_master_dsi->phy);
		if (FUNC1(src_pll))
			return FUNC3(src_pll);
		ret = FUNC7(msm_dsi->host, src_pll);
		if (ret)
			return ret;
		ret = FUNC7(other_dsi->host, src_pll);
	}

	return ret;
}