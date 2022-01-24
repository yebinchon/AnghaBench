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
struct evdev {scalar_t__ open; struct input_handle handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_handle*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct evdev *evdev)
{
	struct input_handle *handle = &evdev->handle;

	FUNC1(evdev);
	FUNC0(evdev);

	/* evdev is marked dead so no one else accesses evdev->open */
	if (evdev->open) {
		FUNC3(handle, NULL);
		FUNC2(handle);
	}
}