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
typedef  int u8 ;
struct picolcd_fb_data {int bpp; int force; int ready; int /*<<< orphan*/  bitmap; int /*<<< orphan*/  vbitmap; } ;
struct picolcd_data {TYPE_1__* fb_info; int /*<<< orphan*/  lock; int /*<<< orphan*/  hdev; } ;
struct hid_report {int maxfield; TYPE_2__** field; } ;
typedef  int /*<<< orphan*/  mapcmd ;
struct TYPE_4__ {int maxusage; } ;
struct TYPE_3__ {int /*<<< orphan*/  deferred_work; struct picolcd_fb_data* par; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int PICOLCDFB_SIZE ; 
 int /*<<< orphan*/  REPORT_LCD_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hid_report*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct hid_report* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct picolcd_data *data, int clear)
{
	struct hid_report *report = FUNC3(REPORT_LCD_CMD, data->hdev);
	struct picolcd_fb_data *fbdata = data->fb_info->par;
	int i, j;
	unsigned long flags;
	static const u8 mapcmd[8] = { 0x00, 0x02, 0x00, 0x64, 0x3f, 0x00, 0x64, 0xc0 };

	if (!report || report->maxfield != 1)
		return -ENODEV;

	FUNC5(&data->lock, flags);
	for (i = 0; i < 4; i++) {
		for (j = 0; j < report->field[0]->maxusage; j++)
			if (j == 0)
				FUNC1(report->field[0], j, i << 2);
			else if (j < sizeof(mapcmd))
				FUNC1(report->field[0], j, mapcmd[j]);
			else
				FUNC1(report->field[0], j, 0);
		FUNC0(data->hdev, report, HID_REQ_SET_REPORT);
	}
	FUNC6(&data->lock, flags);

	if (clear) {
		FUNC2(fbdata->vbitmap, 0, PICOLCDFB_SIZE);
		FUNC2(fbdata->bitmap, 0, PICOLCDFB_SIZE*fbdata->bpp);
	}
	fbdata->force = 1;

	/* schedule first output of framebuffer */
	if (fbdata->ready)
		FUNC4(&data->fb_info->deferred_work, 0);
	else
		fbdata->ready = 1;

	return 0;
}