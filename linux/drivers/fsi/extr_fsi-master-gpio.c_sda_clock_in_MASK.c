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
struct fsi_master_gpio {int /*<<< orphan*/  gpio_clk; int /*<<< orphan*/  no_delays; int /*<<< orphan*/  gpio_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSI_GPIO_STD_DLY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct fsi_master_gpio *master)
{
	int in;

	if (!master->no_delays)
		FUNC2(FSI_GPIO_STD_DLY);
	FUNC1(master->gpio_clk, 0);

	/* Dummy read to feed the synchronizers */
	FUNC0(master->gpio_data);

	/* Actual data read */
	in = FUNC0(master->gpio_data);
	if (!master->no_delays)
		FUNC2(FSI_GPIO_STD_DLY);
	FUNC1(master->gpio_clk, 1);
	return in ? 1 : 0;
}