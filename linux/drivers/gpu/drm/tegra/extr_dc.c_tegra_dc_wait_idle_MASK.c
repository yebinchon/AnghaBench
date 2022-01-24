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
struct tegra_dc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (struct tegra_dc*) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct tegra_dc *dc, unsigned long timeout)
{
	timeout = jiffies + FUNC1(timeout);

	while (FUNC3(jiffies, timeout)) {
		if (FUNC2(dc))
			return 0;

		FUNC4(1000, 2000);
	}

	FUNC0(dc->dev, "timeout waiting for DC to become idle\n");
	return -ETIMEDOUT;
}