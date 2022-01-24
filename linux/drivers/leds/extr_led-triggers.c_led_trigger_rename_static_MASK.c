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
struct led_trigger {char const* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  triggers_list_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(const char *name, struct led_trigger *trig)
{
	/* new name must be on a temporary string to prevent races */
	FUNC0(name == trig->name);

	FUNC1(&triggers_list_lock);
	/* this assumes that trig->name was originaly allocated to
	 * non constant storage */
	FUNC2((char *)trig->name, name);
	FUNC3(&triggers_list_lock);
}