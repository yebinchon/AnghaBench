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
struct fsi_master_gpio {int /*<<< orphan*/  gpio_clk; int /*<<< orphan*/  no_delays; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSI_GPIO_STD_DLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct fsi_master_gpio *master, int count)
{
	int i;

	for (i = 0; i < count; i++) {
		if (!master->no_delays)
			FUNC1(FSI_GPIO_STD_DLY);
		FUNC0(master->gpio_clk, 0);
		if (!master->no_delays)
			FUNC1(FSI_GPIO_STD_DLY);
		FUNC0(master->gpio_clk, 1);
	}
}