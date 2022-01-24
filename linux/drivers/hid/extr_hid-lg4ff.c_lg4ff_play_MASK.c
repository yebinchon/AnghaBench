#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct lg_drv_data {struct lg4ff_device_entry* device_props; } ;
struct lg4ff_device_entry {int /*<<< orphan*/  report_lock; TYPE_4__* report; } ;
struct input_dev {int dummy; } ;
struct hid_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  start_level; } ;
struct TYPE_7__ {TYPE_2__ ramp; } ;
struct ff_effect {int type; TYPE_3__ u; } ;
typedef  int s32 ;
struct TYPE_8__ {TYPE_1__** field; } ;
struct TYPE_5__ {int* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
#define  FF_CONSTANT 128 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*) ; 
 struct lg_drv_data* FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 struct hid_device* FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct input_dev *dev, void *data, struct ff_effect *effect)
{
	struct hid_device *hid = FUNC4(dev);
	struct lg4ff_device_entry *entry;
	struct lg_drv_data *drv_data;
	unsigned long flags;
	s32 *value;
	int x;

	drv_data = FUNC2(hid);
	if (!drv_data) {
		FUNC1(hid, "Private driver data not found!\n");
		return -EINVAL;
	}

	entry = drv_data->device_props;
	if (!entry) {
		FUNC1(hid, "Device properties not found!\n");
		return -EINVAL;
	}
	value = entry->report->field[0]->value;

#define CLAMP(x) do { if (x < 0) x = 0; else if (x > 0xff) x = 0xff; } while (0)

	switch (effect->type) {
	case FF_CONSTANT:
		x = effect->u.ramp.start_level + 0x80;	/* 0x80 is no force */
		CLAMP(x);

		FUNC5(&entry->report_lock, flags);
		if (x == 0x80) {
			/* De-activate force in slot-1*/
			value[0] = 0x13;
			value[1] = 0x00;
			value[2] = 0x00;
			value[3] = 0x00;
			value[4] = 0x00;
			value[5] = 0x00;
			value[6] = 0x00;

			FUNC3(hid, entry->report, HID_REQ_SET_REPORT);
			FUNC6(&entry->report_lock, flags);
			return 0;
		}

		value[0] = 0x11;	/* Slot 1 */
		value[1] = 0x08;
		value[2] = x;
		value[3] = 0x80;
		value[4] = 0x00;
		value[5] = 0x00;
		value[6] = 0x00;

		FUNC3(hid, entry->report, HID_REQ_SET_REPORT);
		FUNC6(&entry->report_lock, flags);
		break;
	}
	return 0;
}