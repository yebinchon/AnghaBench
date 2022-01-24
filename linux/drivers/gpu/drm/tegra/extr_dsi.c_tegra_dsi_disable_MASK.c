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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_dsi {struct tegra_dsi* slave; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_POWER_CONTROL ; 
 int /*<<< orphan*/  DSI_POWER_CONTROL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_dsi*) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_dsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_dsi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct tegra_dsi *dsi)
{
	u32 value;

	if (dsi->slave) {
		FUNC0(dsi->slave);
		FUNC0(dsi);
	}

	value = FUNC1(dsi, DSI_POWER_CONTROL);
	value &= ~DSI_POWER_CONTROL_ENABLE;
	FUNC2(dsi, value, DSI_POWER_CONTROL);

	if (dsi->slave)
		FUNC4(dsi->slave);

	FUNC3(5000, 10000);
}