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
struct tegra_sor {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SOR_TEST ; 
 unsigned long SOR_TEST_HEAD_MODE_AWAKE ; 
 unsigned long SOR_TEST_HEAD_MODE_MASK ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 unsigned long FUNC1 (struct tegra_sor*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct tegra_sor *sor)
{
	unsigned long value, timeout;

	timeout = jiffies + FUNC0(250);

	/* wait for head to wake up */
	while (FUNC2(jiffies, timeout)) {
		value = FUNC1(sor, SOR_TEST);
		value &= SOR_TEST_HEAD_MODE_MASK;

		if (value == SOR_TEST_HEAD_MODE_AWAKE)
			return 0;

		FUNC3(25, 100);
	}

	return -ETIMEDOUT;
}