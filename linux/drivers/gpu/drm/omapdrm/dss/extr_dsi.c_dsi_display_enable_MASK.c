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
 int /*<<< orphan*/  FUNC3 (struct dsi_data*) ; 
 int FUNC4 (struct dsi_data*) ; 
 int FUNC5 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct dsi_data* FUNC9 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC10(struct omap_dss_device *dssdev)
{
	struct dsi_data *dsi = FUNC9(dssdev);
	int r;

	FUNC0("dsi_display_enable\n");

	FUNC1(!FUNC3(dsi));

	FUNC7(&dsi->lock);

	r = FUNC5(dsi);
	if (r)
		goto err_get_dsi;

	FUNC2(dsi);

	r = FUNC4(dsi);
	if (r)
		goto err_init_dsi;

	FUNC8(&dsi->lock);

	return;

err_init_dsi:
	FUNC6(dsi);
err_get_dsi:
	FUNC8(&dsi->lock);
	FUNC0("dsi_display_enable FAILED\n");
}