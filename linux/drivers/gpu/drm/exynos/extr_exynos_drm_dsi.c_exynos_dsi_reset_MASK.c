#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct exynos_dsi {int /*<<< orphan*/  completed; TYPE_1__* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/ * reg_values; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSIM_SWRST_REG ; 
 size_t RESET_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct exynos_dsi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct exynos_dsi *dsi)
{
	u32 reset_val = dsi->driver_data->reg_values[RESET_TYPE];

	FUNC1(&dsi->completed);
	FUNC0(dsi, DSIM_SWRST_REG, reset_val);
}