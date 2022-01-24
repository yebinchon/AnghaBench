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
struct fsi_master_acf {int /*<<< orphan*/  gpio_trans; int /*<<< orphan*/  gpio_data; int /*<<< orphan*/  gpio_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct fsi_master_acf *master)
{
	FUNC0(master->gpio_clk);
	FUNC0(master->gpio_data);
	FUNC0(master->gpio_trans);
}