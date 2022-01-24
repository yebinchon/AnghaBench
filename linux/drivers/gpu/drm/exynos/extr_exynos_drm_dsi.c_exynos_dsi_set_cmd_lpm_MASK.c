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
struct exynos_dsi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSIM_CMD_LPDT_LP ; 
 int /*<<< orphan*/  DSIM_ESCMODE_REG ; 
 int /*<<< orphan*/  FUNC0 (struct exynos_dsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct exynos_dsi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct exynos_dsi *dsi, bool lpm)
{
	u32 v = FUNC0(dsi, DSIM_ESCMODE_REG);

	if (lpm)
		v |= DSIM_CMD_LPDT_LP;
	else
		v &= ~DSIM_CMD_LPDT_LP;

	FUNC1(dsi, DSIM_ESCMODE_REG, v);
}