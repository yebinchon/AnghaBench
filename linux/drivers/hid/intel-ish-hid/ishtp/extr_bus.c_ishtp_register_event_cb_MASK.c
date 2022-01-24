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
struct ishtp_cl_device {void (* event_cb ) (struct ishtp_cl_device*) ;int /*<<< orphan*/  event_work; } ;

/* Variables and functions */
 int EALREADY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ishtp_bus_event_work ; 

int FUNC1(struct ishtp_cl_device *device,
	void (*event_cb)(struct ishtp_cl_device *))
{
	if (device->event_cb)
		return -EALREADY;

	device->event_cb = event_cb;
	FUNC0(&device->event_work, ishtp_bus_event_work);

	return 0;
}