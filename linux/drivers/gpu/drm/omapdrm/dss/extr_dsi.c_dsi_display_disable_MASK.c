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
struct omap_dss_device {int dummy; } ;
struct dsi_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct dsi_data*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct dsi_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct dsi_data* FUNC8 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC9(struct omap_dss_device *dssdev,
		bool disconnect_lanes, bool enter_ulps)
{
	struct dsi_data *dsi = FUNC8(dssdev);

	FUNC0("dsi_display_disable\n");

	FUNC1(!FUNC2(dsi));

	FUNC6(&dsi->lock);

	FUNC5(dsi, 0);
	FUNC5(dsi, 1);
	FUNC5(dsi, 2);
	FUNC5(dsi, 3);

	FUNC3(dsi, disconnect_lanes, enter_ulps);

	FUNC4(dsi);

	FUNC7(&dsi->lock);
}