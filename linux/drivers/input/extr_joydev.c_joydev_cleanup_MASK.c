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
struct input_handle {int dummy; } ;
struct joydev {scalar_t__ open; struct input_handle handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_handle*) ; 
 int /*<<< orphan*/  FUNC1 (struct joydev*) ; 
 int /*<<< orphan*/  FUNC2 (struct joydev*) ; 

__attribute__((used)) static void FUNC3(struct joydev *joydev)
{
	struct input_handle *handle = &joydev->handle;

	FUNC2(joydev);
	FUNC1(joydev);

	/* joydev is marked dead so no one else accesses joydev->open */
	if (joydev->open)
		FUNC0(handle);
}