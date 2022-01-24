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
struct gpiod_lookup_table {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  gpio_lookup_list ; 
 int /*<<< orphan*/  gpio_lookup_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct gpiod_lookup_table *table)
{
	FUNC1(&gpio_lookup_lock);

	FUNC0(&table->list, &gpio_lookup_list);

	FUNC2(&gpio_lookup_lock);
}