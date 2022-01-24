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
struct tegra_dsi {struct tegra_dsi* slave; int /*<<< orphan*/  dev; int /*<<< orphan*/  mipi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tegra_dsi*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tegra_dsi *dsi)
{
	int err;

	FUNC1(dsi->dev);

	err = FUNC3(dsi->mipi);
	if (err < 0)
		FUNC0(dsi->dev, "failed to enable MIPI calibration: %d\n",
			err);

	err = FUNC2(dsi);
	if (err < 0)
		FUNC0(dsi->dev, "MIPI calibration failed: %d\n", err);

	if (dsi->slave)
		FUNC4(dsi->slave);
}