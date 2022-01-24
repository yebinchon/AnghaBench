#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pidff_device {int /*<<< orphan*/ * reports; struct hid_device* hid; TYPE_2__* pool; int /*<<< orphan*/ * control_id; TYPE_1__* device_control; } ;
struct hid_device {int dummy; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_3__ {int /*<<< orphan*/ * value; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_REQ_GET_REPORT ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 size_t PID_DEVICE_CONTROL ; 
 size_t PID_ENABLE_ACTUATORS ; 
 size_t PID_POOL ; 
 size_t PID_RESET ; 
 size_t PID_SIMULTANEOUS_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,char*,int) ; 

__attribute__((used)) static void FUNC4(struct pidff_device *pidff)
{
	struct hid_device *hid = pidff->hid;
	int i = 0;

	pidff->device_control->value[0] = pidff->control_id[PID_RESET];
	/* We reset twice as sometimes hid_wait_io isn't waiting long enough */
	FUNC1(hid, pidff->reports[PID_DEVICE_CONTROL], HID_REQ_SET_REPORT);
	FUNC2(hid);
	FUNC1(hid, pidff->reports[PID_DEVICE_CONTROL], HID_REQ_SET_REPORT);
	FUNC2(hid);

	pidff->device_control->value[0] =
		pidff->control_id[PID_ENABLE_ACTUATORS];
	FUNC1(hid, pidff->reports[PID_DEVICE_CONTROL], HID_REQ_SET_REPORT);
	FUNC2(hid);

	/* pool report is sometimes messed up, refetch it */
	FUNC1(hid, pidff->reports[PID_POOL], HID_REQ_GET_REPORT);
	FUNC2(hid);

	if (pidff->pool[PID_SIMULTANEOUS_MAX].value) {
		while (pidff->pool[PID_SIMULTANEOUS_MAX].value[0] < 2) {
			if (i++ > 20) {
				FUNC3(pidff->hid,
					 "device reports %d simultaneous effects\n",
					 pidff->pool[PID_SIMULTANEOUS_MAX].value[0]);
				break;
			}
			FUNC0(pidff->hid, "pid_pool requested again\n");
			FUNC1(hid, pidff->reports[PID_POOL],
					  HID_REQ_GET_REPORT);
			FUNC2(hid);
		}
	}
}