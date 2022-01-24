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
typedef  int u16 ;
struct lg_drv_data {struct lg4ff_device_entry* device_props; } ;
struct lg4ff_device_entry {int /*<<< orphan*/  report_lock; TYPE_2__* report; } ;
struct hid_device {int dummy; } ;
typedef  int s32 ;
struct TYPE_4__ {TYPE_1__** field; } ;
struct TYPE_3__ {int* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*) ; 
 struct lg_drv_data* FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct hid_device *hid, u16 range)
{
	struct lg4ff_device_entry *entry;
	struct lg_drv_data *drv_data;
	unsigned long flags;
	int start_left, start_right, full_range;
	s32 *value;

	drv_data = FUNC2(hid);
	if (!drv_data) {
		FUNC1(hid, "Private driver data not found!\n");
		return;
	}

	entry = drv_data->device_props;
	if (!entry) {
		FUNC1(hid, "Device properties not found!\n");
		return;
	}
	value = entry->report->field[0]->value;
	FUNC0("Driving Force Pro: setting range to %u\n", range);

	/* Prepare "coarse" limit command */
	FUNC4(&entry->report_lock, flags);
	value[0] = 0xf8;
	value[1] = 0x00;	/* Set later */
	value[2] = 0x00;
	value[3] = 0x00;
	value[4] = 0x00;
	value[5] = 0x00;
	value[6] = 0x00;

	if (range > 200) {
		value[1] = 0x03;
		full_range = 900;
	} else {
		value[1] = 0x02;
		full_range = 200;
	}
	FUNC3(hid, entry->report, HID_REQ_SET_REPORT);

	/* Prepare "fine" limit command */
	value[0] = 0x81;
	value[1] = 0x0b;
	value[2] = 0x00;
	value[3] = 0x00;
	value[4] = 0x00;
	value[5] = 0x00;
	value[6] = 0x00;

	if (range == 200 || range == 900) {	/* Do not apply any fine limit */
		FUNC3(hid, entry->report, HID_REQ_SET_REPORT);
		FUNC5(&entry->report_lock, flags);
		return;
	}

	/* Construct fine limit command */
	start_left = (((full_range - range + 1) * 2047) / full_range);
	start_right = 0xfff - start_left;

	value[2] = start_left >> 4;
	value[3] = start_right >> 4;
	value[4] = 0xff;
	value[5] = (start_right & 0xe) << 4 | (start_left & 0xe);
	value[6] = 0xff;

	FUNC3(hid, entry->report, HID_REQ_SET_REPORT);
	FUNC5(&entry->report_lock, flags);
}