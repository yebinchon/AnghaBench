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
struct TYPE_2__ {scalar_t__ touch_input; scalar_t__ pen_input; } ;
struct wacom {TYPE_1__ wacom_wac; } ;
struct hid_report {scalar_t__ type; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ HID_INPUT_REPORT ; 
 scalar_t__ FUNC0 (struct hid_field*) ; 
 scalar_t__ FUNC1 (struct hid_field*) ; 
 struct wacom* FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,struct hid_report*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,struct hid_report*,int,struct hid_field*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*,struct hid_report*) ; 
 int /*<<< orphan*/  FUNC6 (struct hid_device*,struct hid_report*) ; 

__attribute__((used)) static int FUNC7(struct hid_device *hdev, struct hid_report *report,
			 int collection_index, struct hid_field *field,
			 int field_index)
{
	struct wacom *wacom = FUNC2(hdev);

	if (FUNC0(field))
		FUNC4(hdev, report, collection_index, field,
				       field_index);
	FUNC3(hdev, report, collection_index, field_index);

	/*
	 * Non-input reports may be sent prior to the device being
	 * completely initialized. Since only their events need
	 * to be processed, exit after 'wacom_report_events' has
	 * been called to prevent potential crashes in the report-
	 * processing functions.
	 */
	if (report->type != HID_INPUT_REPORT)
		return -1;

	if (FUNC1(field) && wacom->wacom_wac.pen_input)
		FUNC6(hdev, report);
	else if (FUNC0(field) && wacom->wacom_wac.touch_input)
		FUNC5(hdev, report);

	return 0;
}