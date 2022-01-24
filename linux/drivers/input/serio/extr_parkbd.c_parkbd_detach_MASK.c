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
struct parport {scalar_t__ number; } ;

/* Variables and functions */
 int /*<<< orphan*/  parkbd_dev ; 
 int /*<<< orphan*/ * parkbd_port ; 
 scalar_t__ parkbd_pp_no ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct parport *port)
{
	if (!parkbd_port || port->number != parkbd_pp_no)
		return;

	FUNC0(parkbd_dev);
	FUNC2(parkbd_port);
	FUNC1(parkbd_dev);
	parkbd_port = NULL;
}