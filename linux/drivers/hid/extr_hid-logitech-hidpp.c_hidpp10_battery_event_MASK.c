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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int sub_id; int* params; } ;
struct hidpp_report {scalar_t__ report_id; int /*<<< orphan*/ * rawbytes; TYPE_1__ rap; } ;
struct TYPE_4__ {int capacity; int level; int status; int online; scalar_t__ ps; } ;
struct hidpp_device {TYPE_2__ battery; } ;

/* Variables and functions */
#define  HIDPP_REG_BATTERY_MILEAGE 129 
#define  HIDPP_REG_BATTERY_STATUS 128 
 int POWER_SUPPLY_STATUS_DISCHARGING ; 
 int POWER_SUPPLY_STATUS_FULL ; 
 scalar_t__ REPORT_ID_HIDPP_SHORT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct hidpp_device *hidpp, u8 *data, int size)
{
	struct hidpp_report *report = (struct hidpp_report *)data;
	int status, capacity, level;
	bool changed;

	if (report->report_id != REPORT_ID_HIDPP_SHORT)
		return 0;

	switch (report->rap.sub_id) {
	case HIDPP_REG_BATTERY_STATUS:
		capacity = hidpp->battery.capacity;
		level = FUNC1(report->rawbytes[1]);
		status = FUNC2(report->rawbytes[2]);
		break;
	case HIDPP_REG_BATTERY_MILEAGE:
		capacity = report->rap.params[0];
		level = hidpp->battery.level;
		status = FUNC0(report->rawbytes[3]);
		break;
	default:
		return 0;
	}

	changed = capacity != hidpp->battery.capacity ||
		  level != hidpp->battery.level ||
		  status != hidpp->battery.status;

	/* the capacity is only available when discharging or full */
	hidpp->battery.online = status == POWER_SUPPLY_STATUS_DISCHARGING ||
				status == POWER_SUPPLY_STATUS_FULL;

	if (changed) {
		hidpp->battery.level = level;
		hidpp->battery.status = status;
		if (hidpp->battery.ps)
			FUNC3(hidpp->battery.ps);
	}

	return 0;
}