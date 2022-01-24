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
struct dsi_data {int vdds_dsi_enabled; int /*<<< orphan*/  vdds_dsi_reg; int /*<<< orphan*/  pll; int /*<<< orphan*/  module_id; int /*<<< orphan*/  dss; int /*<<< orphan*/  ulps_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSS_CLK_SRC_FCK ; 
 int /*<<< orphan*/  FUNC0 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct dsi_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dsi_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct dsi_data *dsi, bool disconnect_lanes,
				   bool enter_ulps)
{
	if (enter_ulps && !dsi->ulps_enabled)
		FUNC1(dsi);

	/* disable interface */
	FUNC2(dsi, 0);
	FUNC3(dsi, 0, 0);
	FUNC3(dsi, 1, 0);
	FUNC3(dsi, 2, 0);
	FUNC3(dsi, 3, 0);

	FUNC5(dsi->dss, dsi->module_id, DSS_CLK_SRC_FCK);
	FUNC0(dsi);
	FUNC4(&dsi->pll);

	if (disconnect_lanes) {
		FUNC6(dsi->vdds_dsi_reg);
		dsi->vdds_dsi_enabled = false;
	}
}