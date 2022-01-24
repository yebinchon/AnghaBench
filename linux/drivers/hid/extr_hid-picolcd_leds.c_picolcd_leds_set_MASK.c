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
struct picolcd_data {int status; int /*<<< orphan*/  lock; int /*<<< orphan*/  hdev; int /*<<< orphan*/  led_state; int /*<<< orphan*/ * led; } ;
struct hid_report {int maxfield; TYPE_1__** field; } ;
struct TYPE_2__ {int report_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int PICOLCD_FAILED ; 
 int /*<<< orphan*/  REPORT_LED_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hid_report*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hid_report* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct picolcd_data *data)
{
	struct hid_report *report;
	unsigned long flags;

	if (!data->led[0])
		return;
	report = FUNC2(REPORT_LED_STATE, data->hdev);
	if (!report || report->maxfield != 1 || report->field[0]->report_count != 1)
		return;

	FUNC3(&data->lock, flags);
	FUNC1(report->field[0], 0, data->led_state);
	if (!(data->status & PICOLCD_FAILED))
		FUNC0(data->hdev, report, HID_REQ_SET_REPORT);
	FUNC4(&data->lock, flags);
}