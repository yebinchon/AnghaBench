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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct sensor_hub_data {int /*<<< orphan*/  mutex; } ;
struct hid_sensor_hub_device {int /*<<< orphan*/  hdev; } ;
struct hid_report {size_t maxfield; TYPE_1__** field; } ;
typedef  int /*<<< orphan*/  __s32 ;
struct TYPE_2__ {int report_count; int report_size; scalar_t__ value; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_REQ_GET_REPORT ; 
 struct sensor_hub_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hid_report*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct hid_report* FUNC9 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct hid_sensor_hub_device *hsdev, u32 report_id,
			   u32 field_index, int buffer_size, void *buffer)
{
	struct hid_report *report;
	struct sensor_hub_data *data = FUNC1(hsdev->hdev);
	int report_size;
	int ret = 0;
	u8 *val_ptr;
	int buffer_index = 0;
	int i;

	FUNC5(buffer, 0, buffer_size);

	FUNC7(&data->mutex);
	report = FUNC9(report_id, hsdev->hdev, HID_FEATURE_REPORT);
	if (!report || (field_index >= report->maxfield) ||
	    report->field[field_index]->report_count < 1) {
		ret = -EINVAL;
		goto done_proc;
	}
	FUNC2(hsdev->hdev, report, HID_REQ_GET_REPORT);
	FUNC3(hsdev->hdev);

	/* calculate number of bytes required to read this field */
	report_size = FUNC0(report->field[field_index]->report_size,
				   8) *
				   report->field[field_index]->report_count;
	if (!report_size) {
		ret = -EINVAL;
		goto done_proc;
	}
	ret = FUNC6(report_size, buffer_size);

	val_ptr = (u8 *)report->field[field_index]->value;
	for (i = 0; i < report->field[field_index]->report_count; ++i) {
		if (buffer_index >= ret)
			break;

		FUNC4(&((u8 *)buffer)[buffer_index], val_ptr,
		       report->field[field_index]->report_size / 8);
		val_ptr += sizeof(__s32);
		buffer_index += (report->field[field_index]->report_size / 8);
	}

done_proc:
	FUNC8(&data->mutex);

	return ret;
}