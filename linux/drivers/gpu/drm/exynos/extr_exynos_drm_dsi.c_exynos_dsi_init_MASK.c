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
struct exynos_dsi_driver_data {scalar_t__* reg_values; scalar_t__ wait_for_reset; } ;
struct exynos_dsi {int /*<<< orphan*/  lanes; struct exynos_dsi_driver_data* driver_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DSIM_FUNCRST ; 
 size_t RESET_TYPE ; 
 int /*<<< orphan*/  FUNC1 (struct exynos_dsi*) ; 
 int /*<<< orphan*/  FUNC2 (struct exynos_dsi*) ; 
 int /*<<< orphan*/  FUNC3 (struct exynos_dsi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct exynos_dsi*) ; 
 int /*<<< orphan*/  FUNC5 (struct exynos_dsi*) ; 
 int /*<<< orphan*/  FUNC6 (struct exynos_dsi*) ; 
 int /*<<< orphan*/  FUNC7 (struct exynos_dsi*) ; 

__attribute__((used)) static int FUNC8(struct exynos_dsi *dsi)
{
	const struct exynos_dsi_driver_data *driver_data = dsi->driver_data;

	FUNC5(dsi);
	FUNC2(dsi);

	if (driver_data->reg_values[RESET_TYPE] == DSIM_FUNCRST)
		FUNC3(dsi, FUNC0(dsi->lanes) - 1);

	FUNC1(dsi);
	if (driver_data->wait_for_reset)
		FUNC7(dsi);
	FUNC6(dsi);
	FUNC4(dsi);

	return 0;
}