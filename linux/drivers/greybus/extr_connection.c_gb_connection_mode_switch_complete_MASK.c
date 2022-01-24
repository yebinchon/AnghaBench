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
struct gb_connection {int mode_switch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_connection*) ; 

void FUNC3(struct gb_connection *connection)
{
	FUNC2(connection);
	FUNC0(connection);

	FUNC1(connection);

	connection->mode_switch = false;
}