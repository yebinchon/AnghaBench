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
 int /*<<< orphan*/  DSI_STATUS ; 
 int DSI_STATUS_IDLE ; 
 int ETIMEDOUT ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (unsigned long) ; 
 int FUNC1 (struct tegra_dsi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct tegra_dsi *dsi, unsigned long timeout)
{
	u32 value;

	timeout = jiffies + FUNC0(timeout);

	while (FUNC2(jiffies, timeout)) {
		value = FUNC1(dsi, DSI_STATUS);
		if (value & DSI_STATUS_IDLE)
			return 0;

		FUNC3(1000, 2000);
	}

	return -ETIMEDOUT;
}