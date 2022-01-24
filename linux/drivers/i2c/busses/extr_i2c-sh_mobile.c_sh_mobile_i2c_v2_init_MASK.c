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
struct sh_mobile_i2c_data {unsigned long bus_speed; int /*<<< orphan*/  clks_per_count; void* icch; void* iccl; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 void* FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sh_mobile_i2c_data*) ; 

__attribute__((used)) static int FUNC3(struct sh_mobile_i2c_data *pd)
{
	unsigned long clks_per_cycle;

	/* L = 5, H = 4, L + H = 9 */
	clks_per_cycle = FUNC1(pd->clk) / pd->bus_speed;
	pd->iccl = FUNC0(clks_per_cycle * 5 / 9 - 1, pd->clks_per_count);
	pd->icch = FUNC0(clks_per_cycle * 4 / 9 - 5, pd->clks_per_count);

	return FUNC2(pd);
}