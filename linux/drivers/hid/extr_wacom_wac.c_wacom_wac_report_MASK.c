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
struct TYPE_3__ {scalar_t__ type; } ;
struct wacom_wac {scalar_t__ pad_input; scalar_t__ touch_input; scalar_t__ pen_input; TYPE_1__ features; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct hid_report {int maxfield; struct hid_field** field; } ;
struct hid_field {TYPE_2__* usage; int /*<<< orphan*/  physical; } ;
struct hid_device {int dummy; } ;
struct TYPE_4__ {int collection_index; } ;

/* Variables and functions */
 scalar_t__ HID_DG_TABLETFUNCTIONKEY ; 
 scalar_t__ HID_GENERIC ; 
 scalar_t__ FUNC0 (struct hid_field*) ; 
 scalar_t__ FUNC1 (struct hid_field*) ; 
 scalar_t__ FUNC2 (struct hid_field*) ; 
 struct wacom* FUNC3 (struct hid_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*,struct hid_report*) ; 
 int /*<<< orphan*/  FUNC6 (struct hid_device*,struct hid_report*) ; 
 scalar_t__ FUNC7 (struct hid_device*,struct hid_report*,int,struct hid_field*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hid_device*,struct hid_report*) ; 
 int /*<<< orphan*/  FUNC9 (struct hid_device*,struct hid_report*) ; 
 int /*<<< orphan*/  FUNC10 (struct hid_device*,struct hid_report*,struct hid_field*) ; 
 int /*<<< orphan*/  FUNC11 (struct hid_device*,struct hid_report*) ; 

void FUNC12(struct hid_device *hdev, struct hid_report *report)
{
	struct wacom *wacom = FUNC3(hdev);
	struct wacom_wac *wacom_wac = &wacom->wacom_wac;
	struct hid_field *field;
	bool pad_in_hid_field = false, pen_in_hid_field = false,
		finger_in_hid_field = false, true_pad = false;
	int r;
	int prev_collection = -1;

	if (wacom_wac->features.type != HID_GENERIC)
		return;

	for (r = 0; r < report->maxfield; r++) {
		field = report->field[r];

		if (FUNC1(field))
			pad_in_hid_field = true;
		if (FUNC2(field))
			pen_in_hid_field = true;
		if (FUNC0(field))
			finger_in_hid_field = true;
		if (FUNC4(field->physical) == HID_DG_TABLETFUNCTIONKEY)
			true_pad = true;
	}

	FUNC5(hdev, report);

	if (pad_in_hid_field && wacom->wacom_wac.pad_input)
		FUNC9(hdev, report);
	if (pen_in_hid_field && wacom->wacom_wac.pen_input)
		FUNC11(hdev, report);
	if (finger_in_hid_field && wacom->wacom_wac.touch_input)
		FUNC8(hdev, report);

	for (r = 0; r < report->maxfield; r++) {
		field = report->field[r];

		if (field->usage[0].collection_index != prev_collection) {
			if (FUNC7(hdev, report,
				field->usage[0].collection_index, field, r) < 0)
				return;
			prev_collection = field->usage[0].collection_index;
		}
	}

	FUNC6(hdev, report);

	if (true_pad && wacom->wacom_wac.pad_input)
		FUNC10(hdev, report, field);
}