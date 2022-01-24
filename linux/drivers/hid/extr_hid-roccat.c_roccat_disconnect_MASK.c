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
struct roccat_device {int /*<<< orphan*/  wait; int /*<<< orphan*/  hid; scalar_t__ open; TYPE_1__* dev; scalar_t__ exist; } ;
struct TYPE_2__ {int /*<<< orphan*/  class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct roccat_device** devices ; 
 int /*<<< orphan*/  devices_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct roccat_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  roccat_major ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(int minor)
{
	struct roccat_device *device;

	FUNC4(&devices_lock);
	device = devices[minor];
	FUNC5(&devices_lock);

	device->exist = 0; /* TODO exist maybe not needed */

	FUNC1(device->dev->class, FUNC0(roccat_major, minor));

	FUNC4(&devices_lock);
	devices[minor] = NULL;
	FUNC5(&devices_lock);

	if (device->open) {
		FUNC2(device->hid);
		FUNC6(&device->wait);
	} else {
		FUNC3(device);
	}
}