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
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ ddr_clk_always_on; } ;
struct dsi_data {TYPE_1__ vm_timings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dsi_data*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct dsi_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dsi_data*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dsi_data*,int) ; 
 struct dsi_data* FUNC9 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC10(struct omap_dss_device *dssdev, int channel,
		bool enable)
{
	struct dsi_data *dsi = FUNC9(dssdev);

	FUNC1("dsi_vc_enable_hs(%d, %d)\n", channel, enable);

	FUNC3(!FUNC4(dsi));

	FUNC7(dsi, channel, 0);
	FUNC6(dsi, 0);

	FUNC2(dsi, FUNC0(channel), enable, 9, 9);

	FUNC7(dsi, channel, 1);
	FUNC6(dsi, 1);

	FUNC5(dsi);

	/* start the DDR clock by sending a NULL packet */
	if (dsi->vm_timings.ddr_clk_always_on && enable)
		FUNC8(dsi, channel);
}