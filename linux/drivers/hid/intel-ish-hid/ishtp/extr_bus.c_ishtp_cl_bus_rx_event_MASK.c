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
struct ishtp_cl_device {int /*<<< orphan*/  event_work; scalar_t__ event_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct ishtp_cl_device *device)
{
	if (!device || !device->event_cb)
		return;

	if (device->event_cb)
		FUNC0(&device->event_work);
}