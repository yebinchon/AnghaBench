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
typedef  int u8 ;
typedef  void* u32 ;
typedef  int u16 ;
struct sensor_hub_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int raw_size; int status; scalar_t__ raw_data; int /*<<< orphan*/  ready; void* attr_usage_id; void* usage_id; } ;
struct hid_sensor_hub_device {int /*<<< orphan*/ * mutex_ptr; TYPE_1__ pending; int /*<<< orphan*/  hdev; } ;
struct hid_report {int dummy; } ;
typedef  int s8 ;
typedef  int s16 ;
typedef  enum sensor_hub_read_flags { ____Placeholder_sensor_hub_read_flags } sensor_hub_read_flags ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HID_INPUT_REPORT ; 
 int /*<<< orphan*/  HID_REQ_GET_REPORT ; 
 int HZ ; 
 int SENSOR_HUB_SYNC ; 
 struct sensor_hub_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hid_report*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct hid_report* FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

int FUNC11(struct hid_sensor_hub_device *hsdev,
					u32 usage_id,
					u32 attr_usage_id, u32 report_id,
					enum sensor_hub_read_flags flag,
					bool is_signed)
{
	struct sensor_hub_data *data = FUNC0(hsdev->hdev);
	unsigned long flags;
	struct hid_report *report;
	int ret_val = 0;

	report = FUNC7(report_id, hsdev->hdev,
				   HID_INPUT_REPORT);
	if (!report)
		return -EINVAL;

	FUNC5(hsdev->mutex_ptr);
	if (flag == SENSOR_HUB_SYNC) {
		FUNC4(&hsdev->pending, 0, sizeof(hsdev->pending));
		FUNC2(&hsdev->pending.ready);
		hsdev->pending.usage_id = usage_id;
		hsdev->pending.attr_usage_id = attr_usage_id;
		hsdev->pending.raw_size = 0;

		FUNC8(&data->lock, flags);
		hsdev->pending.status = true;
		FUNC9(&data->lock, flags);
	}
	FUNC5(&data->mutex);
	FUNC1(hsdev->hdev, report, HID_REQ_GET_REPORT);
	FUNC6(&data->mutex);
	if (flag == SENSOR_HUB_SYNC) {
		FUNC10(
						&hsdev->pending.ready, HZ*5);
		switch (hsdev->pending.raw_size) {
		case 1:
			if (is_signed)
				ret_val = *(s8 *)hsdev->pending.raw_data;
			else
				ret_val = *(u8 *)hsdev->pending.raw_data;
			break;
		case 2:
			if (is_signed)
				ret_val = *(s16 *)hsdev->pending.raw_data;
			else
				ret_val = *(u16 *)hsdev->pending.raw_data;
			break;
		case 4:
			ret_val = *(u32 *)hsdev->pending.raw_data;
			break;
		default:
			ret_val = 0;
		}
		FUNC3(hsdev->pending.raw_data);
		hsdev->pending.status = false;
	}
	FUNC6(hsdev->mutex_ptr);

	return ret_val;
}