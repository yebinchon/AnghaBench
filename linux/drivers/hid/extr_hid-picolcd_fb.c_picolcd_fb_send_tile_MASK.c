#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct picolcd_data {int status; int /*<<< orphan*/  lock; int /*<<< orphan*/  hdev; } ;
struct hid_report {int maxfield; int /*<<< orphan*/ * field; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int PICOLCD_FAILED ; 
 int /*<<< orphan*/  REPORT_LCD_CMD_DATA ; 
 int /*<<< orphan*/  REPORT_LCD_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hid_report*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 struct hid_report* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct picolcd_data *data, u8 *vbitmap,
		int chip, int tile)
{
	struct hid_report *report1, *report2;
	unsigned long flags;
	u8 *tdata;
	int i;

	report1 = FUNC2(REPORT_LCD_CMD_DATA, data->hdev);
	if (!report1 || report1->maxfield != 1)
		return -ENODEV;
	report2 = FUNC2(REPORT_LCD_DATA, data->hdev);
	if (!report2 || report2->maxfield != 1)
		return -ENODEV;

	FUNC3(&data->lock, flags);
	if ((data->status & PICOLCD_FAILED)) {
		FUNC4(&data->lock, flags);
		return -ENODEV;
	}
	FUNC1(report1->field[0],  0, chip << 2);
	FUNC1(report1->field[0],  1, 0x02);
	FUNC1(report1->field[0],  2, 0x00);
	FUNC1(report1->field[0],  3, 0x00);
	FUNC1(report1->field[0],  4, 0xb8 | tile);
	FUNC1(report1->field[0],  5, 0x00);
	FUNC1(report1->field[0],  6, 0x00);
	FUNC1(report1->field[0],  7, 0x40);
	FUNC1(report1->field[0],  8, 0x00);
	FUNC1(report1->field[0],  9, 0x00);
	FUNC1(report1->field[0], 10,   32);

	FUNC1(report2->field[0],  0, (chip << 2) | 0x01);
	FUNC1(report2->field[0],  1, 0x00);
	FUNC1(report2->field[0],  2, 0x00);
	FUNC1(report2->field[0],  3,   32);

	tdata = vbitmap + (tile * 4 + chip) * 64;
	for (i = 0; i < 64; i++)
		if (i < 32)
			FUNC1(report1->field[0], 11 + i, tdata[i]);
		else
			FUNC1(report2->field[0], 4 + i - 32, tdata[i]);

	FUNC0(data->hdev, report1, HID_REQ_SET_REPORT);
	FUNC0(data->hdev, report2, HID_REQ_SET_REPORT);
	FUNC4(&data->lock, flags);
	return 0;
}