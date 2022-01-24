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
struct tegra_mipi {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MIPI_CAL_STATUS ; 
 int MIPI_CAL_STATUS_ACTIVE ; 
 int MIPI_CAL_STATUS_DONE ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int FUNC1 (struct tegra_mipi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct tegra_mipi *mipi)
{
	unsigned long timeout = jiffies + FUNC0(250);
	u32 value;

	while (FUNC2(jiffies, timeout)) {
		value = FUNC1(mipi, MIPI_CAL_STATUS);
		if ((value & MIPI_CAL_STATUS_ACTIVE) == 0 &&
		    (value & MIPI_CAL_STATUS_DONE) != 0)
			return 0;

		FUNC3(10, 50);
	}

	return -ETIMEDOUT;
}