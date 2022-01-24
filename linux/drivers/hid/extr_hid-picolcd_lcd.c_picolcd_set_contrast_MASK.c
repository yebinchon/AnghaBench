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
struct picolcd_data {int lcd_contrast; int status; int /*<<< orphan*/  lock; int /*<<< orphan*/  hdev; } ;
struct lcd_device {int dummy; } ;
struct hid_report {int maxfield; TYPE_1__** field; } ;
struct TYPE_2__ {int report_count; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int PICOLCD_FAILED ; 
 int /*<<< orphan*/  REPORT_CONTRAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hid_report*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct picolcd_data* FUNC2 (struct lcd_device*) ; 
 struct hid_report* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct lcd_device *ldev, int contrast)
{
	struct picolcd_data *data = FUNC2(ldev);
	struct hid_report *report = FUNC3(REPORT_CONTRAST, data->hdev);
	unsigned long flags;

	if (!report || report->maxfield != 1 || report->field[0]->report_count != 1)
		return -ENODEV;

	data->lcd_contrast = contrast & 0x0ff;
	FUNC4(&data->lock, flags);
	FUNC1(report->field[0], 0, data->lcd_contrast);
	if (!(data->status & PICOLCD_FAILED))
		FUNC0(data->hdev, report, HID_REQ_SET_REPORT);
	FUNC5(&data->lock, flags);
	return 0;
}