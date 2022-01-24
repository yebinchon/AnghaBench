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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct tegra_dsi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DSI_STATUS ; 
 int ETIMEDOUT ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int FUNC2 (struct tegra_dsi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct tegra_dsi *dsi,
				       unsigned long timeout)
{
	timeout = jiffies + FUNC1(250);

	while (FUNC3(jiffies, timeout)) {
		u32 value = FUNC2(dsi, DSI_STATUS);
		u8 count = value & 0x1f;

		if (count > 0)
			return count;

		FUNC4(1000, 2000);
	}

	FUNC0("peripheral returned no data\n");
	return -ETIMEDOUT;
}