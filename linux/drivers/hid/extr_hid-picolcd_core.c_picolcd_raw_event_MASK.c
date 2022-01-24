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
struct picolcd_data {int /*<<< orphan*/  lock; TYPE_1__* pending; scalar_t__ input_keys; } ;
struct hid_report {scalar_t__ id; } ;
struct hid_device {int dummy; } ;
struct TYPE_2__ {int raw_size; int /*<<< orphan*/  ready; struct hid_report* in_report; int /*<<< orphan*/  raw_data; } ;

/* Variables and functions */
 scalar_t__ REPORT_IR_DATA ; 
 scalar_t__ REPORT_KEY_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct picolcd_data* FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct picolcd_data*,struct hid_device*,struct hid_report*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct picolcd_data*,struct hid_report*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct picolcd_data*,struct hid_report*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct hid_device *hdev,
		struct hid_report *report, u8 *raw_data, int size)
{
	struct picolcd_data *data = FUNC1(hdev);
	unsigned long flags;
	int ret = 0;

	if (!data)
		return 1;

	if (size > 64) {
		FUNC2(hdev, "invalid size value (%d) for picolcd raw event (%d)\n",
				size, report->id);
		return 0;
	}

	if (report->id == REPORT_KEY_STATE) {
		if (data->input_keys)
			ret = FUNC6(data, report, raw_data+1, size-1);
	} else if (report->id == REPORT_IR_DATA) {
		ret = FUNC5(data, report, raw_data+1, size-1);
	} else {
		FUNC7(&data->lock, flags);
		/*
		 * We let the caller of picolcd_send_and_wait() check if the
		 * report we got is one of the expected ones or not.
		 */
		if (data->pending) {
			FUNC3(data->pending->raw_data, raw_data+1, size-1);
			data->pending->raw_size  = size-1;
			data->pending->in_report = report;
			FUNC0(&data->pending->ready);
		}
		FUNC8(&data->lock, flags);
	}

	FUNC4(data, hdev, report, raw_data, size);
	return 1;
}