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
struct msm_dsi_phy_shared_timings {int dummy; } ;
struct msm_dsi_phy_clk_request {int dummy; } ;
struct msm_dsi {int /*<<< orphan*/  phy; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct msm_dsi_phy_clk_request*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct msm_dsi_phy_clk_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct msm_dsi_phy_shared_timings*) ; 

__attribute__((used)) static int FUNC4(struct msm_dsi *msm_dsi, int src_pll_id,
		      struct msm_dsi_phy_shared_timings *shared_timings)
{
	struct msm_dsi_phy_clk_request clk_req;
	int ret;
	bool is_dual_dsi = FUNC0();

	FUNC1(msm_dsi->host, &clk_req, is_dual_dsi);

	ret = FUNC2(msm_dsi->phy, src_pll_id, &clk_req);
	FUNC3(msm_dsi->phy, shared_timings);

	return ret;
}