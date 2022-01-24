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
struct exynos_dsi {scalar_t__ lanes; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSIM_CONFIG_REG ; 
 int FUNC0 (int) ; 
 int DSIM_LANE_EN_CLK ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (struct exynos_dsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct exynos_dsi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct exynos_dsi *dsi, u32 lane)
{
	u32 reg = FUNC2(dsi, DSIM_CONFIG_REG);
	reg |= (FUNC1(dsi->lanes - 1) | DSIM_LANE_EN_CLK |
			FUNC0(lane));
	FUNC3(dsi, DSIM_CONFIG_REG, reg);
}