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
struct exynos_dsi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSIM_FIFOCTRL_REG ; 
 int DSIM_SFR_HEADER_FULL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct exynos_dsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct exynos_dsi *dsi)
{
	int timeout = 2000;

	do {
		u32 reg = FUNC1(dsi, DSIM_FIFOCTRL_REG);

		if (!(reg & DSIM_SFR_HEADER_FULL))
			return 0;

		if (!FUNC0())
			FUNC2(950, 1050);
	} while (--timeout);

	return -ETIMEDOUT;
}