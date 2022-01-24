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
struct hv_device {int /*<<< orphan*/  device; int /*<<< orphan*/  channels_kset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

void FUNC4(struct hv_device *device_obj)
{
	FUNC3("child device %s unregistered\n",
		FUNC0(&device_obj->device));

	FUNC2(device_obj->channels_kset);

	/*
	 * Kick off the process of unregistering the device.
	 * This will call vmbus_remove() and eventually vmbus_device_release()
	 */
	FUNC1(&device_obj->device);
}