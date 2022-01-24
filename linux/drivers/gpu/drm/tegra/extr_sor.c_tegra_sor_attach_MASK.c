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
 int /*<<< orphan*/  SOR_SUPER_STATE1 ; 
 unsigned long SOR_SUPER_STATE_ATTACHED ; 
 unsigned long SOR_SUPER_STATE_HEAD_MODE_AWAKE ; 
 unsigned long SOR_SUPER_STATE_MODE_NORMAL ; 
 int /*<<< orphan*/  SOR_TEST ; 
 unsigned long SOR_TEST_ATTACHED ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 unsigned long FUNC1 (struct tegra_sor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_sor*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_sor*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct tegra_sor *sor)
{
	unsigned long value, timeout;

	/* wake up in normal mode */
	value = FUNC1(sor, SOR_SUPER_STATE1);
	value |= SOR_SUPER_STATE_HEAD_MODE_AWAKE;
	value |= SOR_SUPER_STATE_MODE_NORMAL;
	FUNC3(sor, value, SOR_SUPER_STATE1);
	FUNC2(sor);

	/* attach */
	value = FUNC1(sor, SOR_SUPER_STATE1);
	value |= SOR_SUPER_STATE_ATTACHED;
	FUNC3(sor, value, SOR_SUPER_STATE1);
	FUNC2(sor);

	timeout = jiffies + FUNC0(250);

	while (FUNC4(jiffies, timeout)) {
		value = FUNC1(sor, SOR_TEST);
		if ((value & SOR_TEST_ATTACHED) != 0)
			return 0;

		FUNC5(25, 100);
	}

	return -ETIMEDOUT;
}