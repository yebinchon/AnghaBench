#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gb_interface {int disconnected; int removed; int /*<<< orphan*/  mutex; TYPE_1__* module; } ;
struct TYPE_2__ {scalar_t__ disconnected; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct gb_interface *intf)
{
	/* Mark as disconnected to prevent I/O during disable. */
	if (intf->module->disconnected)
		intf->disconnected = true;

	FUNC3(&intf->mutex);
	intf->removed = true;
	FUNC2(intf);
	FUNC0(intf);
	FUNC4(&intf->mutex);

	FUNC1(intf);
}