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
typedef  int u32 ;
struct tegra_dsi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DSI_TRIGGER ; 
 int DSI_TRIGGER_HOST ; 
 int ETIMEDOUT ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (unsigned long) ; 
 int FUNC2 (struct tegra_dsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_dsi*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct tegra_dsi *dsi, unsigned long timeout)
{
	FUNC3(dsi, DSI_TRIGGER_HOST, DSI_TRIGGER);

	timeout = jiffies + FUNC1(timeout);

	while (FUNC4(jiffies, timeout)) {
		u32 value = FUNC2(dsi, DSI_TRIGGER);
		if ((value & DSI_TRIGGER_HOST) == 0)
			return 0;

		FUNC5(1000, 2000);
	}

	FUNC0("timeout waiting for transmission to complete\n");
	return -ETIMEDOUT;
}