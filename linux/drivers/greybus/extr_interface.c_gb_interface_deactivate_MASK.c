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
struct gb_interface {int active; int /*<<< orphan*/  mode_switch_completion; scalar_t__ mode_switch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_interface*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_interface*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_interface*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_interface*) ; 

void FUNC7(struct gb_interface *intf)
{
	if (!intf->active)
		return;

	FUNC6(intf);

	/* Abort any ongoing mode switch. */
	if (intf->mode_switch)
		FUNC0(&intf->mode_switch_completion);

	FUNC3(intf);
	FUNC1(intf);
	FUNC4(intf, false);
	FUNC2(intf, false);
	FUNC5(intf, false);

	intf->active = false;
}