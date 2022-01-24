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
struct of_overlay_notify_data {int dummy; } ;
struct fpga_region {int /*<<< orphan*/ * info; int /*<<< orphan*/  bridge_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct fpga_region *region,
					      struct of_overlay_notify_data *nd)
{
	FUNC0(&region->bridge_list);
	FUNC1(&region->bridge_list);
	FUNC2(region->info);
	region->info = NULL;
}