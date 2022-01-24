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
struct fw_address_handler {int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int /*<<< orphan*/  address_handler_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct fw_address_handler *handler)
{
	FUNC1(&address_handler_list_lock);
	FUNC0(&handler->link);
	FUNC2(&address_handler_list_lock);
	FUNC3();
}