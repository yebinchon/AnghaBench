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
struct TYPE_2__ {int index; } ;
struct tegra_plane {TYPE_1__ base; struct tegra_dc* dc; } ;
struct tegra_dc {int dummy; } ;

/* Variables and functions */
 int COMMON_UPDATE ; 
 int /*<<< orphan*/  DC_CMD_STATE_CONTROL ; 
 int WIN_A_UPDATE ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int FUNC1 (struct tegra_dc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_dc*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct tegra_plane *plane)
{
	struct tegra_dc *dc = plane->dc;
	unsigned long timeout;
	u32 mask, value;

	mask = COMMON_UPDATE | WIN_A_UPDATE << plane->base.index;
	FUNC2(dc, mask, DC_CMD_STATE_CONTROL);

	timeout = jiffies + FUNC0(1000);

	while (FUNC3(jiffies, timeout)) {
		value = FUNC1(dc, DC_CMD_STATE_CONTROL);
		if ((value & mask) == 0)
			break;

		FUNC4(100, 400);
	}
}