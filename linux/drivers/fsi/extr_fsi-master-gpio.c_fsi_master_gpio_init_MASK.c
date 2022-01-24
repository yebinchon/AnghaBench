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
struct fsi_master_gpio {int /*<<< orphan*/  gpio_data; int /*<<< orphan*/  gpio_clk; int /*<<< orphan*/  gpio_enable; int /*<<< orphan*/  gpio_trans; int /*<<< orphan*/  gpio_mux; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSI_INIT_CLOCKS ; 
 int /*<<< orphan*/  FUNC0 (struct fsi_master_gpio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(struct fsi_master_gpio *master)
{
	unsigned long flags;

	FUNC1(master->gpio_mux, 1);
	FUNC1(master->gpio_trans, 1);
	FUNC1(master->gpio_enable, 1);
	FUNC1(master->gpio_clk, 1);
	FUNC1(master->gpio_data, 1);

	/* todo: evaluate if clocks can be reduced */
	FUNC3(flags);
	FUNC0(master, FSI_INIT_CLOCKS);
	FUNC2(flags);
}