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
struct wacom_wac {unsigned char* data; int pid; TYPE_1__* shared; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ touch_input; scalar_t__ touch_max; } ;

/* Variables and functions */
 scalar_t__ INTUOSHT ; 
 scalar_t__ INTUOSHT2 ; 
 int /*<<< orphan*/  POWER_SUPPLY_STATUS_UNKNOWN ; 
 int /*<<< orphan*/  SW_MUTE_DEVICE ; 
 size_t WACOM_PKGLEN_WIRELESS ; 
 int /*<<< orphan*/  WACOM_POWER_SUPPLY_STATUS_AUTO ; 
 unsigned char WACOM_REPORT_WL ; 
 int /*<<< orphan*/  WACOM_WORKER_WIRELESS ; 
 int FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct wacom_wac*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wacom_wac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct wacom_wac *wacom, size_t len)
{
	unsigned char *data = wacom->data;
	int connected;

	if (len != WACOM_PKGLEN_WIRELESS || data[0] != WACOM_REPORT_WL)
		return 0;

	connected = data[1] & 0x01;
	if (connected) {
		int pid, battery, charging;

		if ((wacom->shared->type == INTUOSHT ||
		    wacom->shared->type == INTUOSHT2) &&
		    wacom->shared->touch_input &&
		    wacom->shared->touch_max) {
			FUNC1(wacom->shared->touch_input,
					SW_MUTE_DEVICE, data[5] & 0x40);
			FUNC2(wacom->shared->touch_input);
		}

		pid = FUNC0(&data[6]);
		battery = (data[5] & 0x3f) * 100 / 31;
		charging = !!(data[5] & 0x80);
		if (wacom->pid != pid) {
			wacom->pid = pid;
			FUNC4(wacom, WACOM_WORKER_WIRELESS);
		}

		FUNC3(wacom, WACOM_POWER_SUPPLY_STATUS_AUTO,
				     battery, charging, 1, 0);

	} else if (wacom->pid != 0) {
		/* disconnected while previously connected */
		wacom->pid = 0;
		FUNC4(wacom, WACOM_WORKER_WIRELESS);
		FUNC3(wacom, POWER_SUPPLY_STATUS_UNKNOWN, 0, 0, 0, 0);
	}

	return 0;
}