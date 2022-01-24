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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct hid_report_enum {scalar_t__ numbered; } ;
struct hid_report {int size; unsigned int maxfield; int /*<<< orphan*/ * field; int /*<<< orphan*/  id; } ;
struct hid_driver {int /*<<< orphan*/  (* report ) (struct hid_device*,struct hid_report*) ;} ;
struct hid_device {int claimed; struct hid_driver* driver; int /*<<< orphan*/  (* hiddev_report_event ) (struct hid_device*,struct hid_report*) ;struct hid_report_enum* report_enum; } ;

/* Variables and functions */
 int HID_CLAIMED_HIDDEV ; 
 int HID_CLAIMED_HIDRAW ; 
 int HID_CLAIMED_INPUT ; 
 int HID_MAX_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 struct hid_report* FUNC1 (struct hid_report_enum*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,struct hid_report*) ; 
 int FUNC4 (struct hid_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hid_device*,struct hid_report*) ; 
 int /*<<< orphan*/  FUNC7 (struct hid_device*,struct hid_report*) ; 

int FUNC8(struct hid_device *hid, int type, u8 *data, u32 size,
		int interrupt)
{
	struct hid_report_enum *report_enum = hid->report_enum + type;
	struct hid_report *report;
	struct hid_driver *hdrv;
	unsigned int a;
	u32 rsize, csize = size;
	u8 *cdata = data;
	int ret = 0;

	report = FUNC1(report_enum, data);
	if (!report)
		goto out;

	if (report_enum->numbered) {
		cdata++;
		csize--;
	}

	rsize = ((report->size - 1) >> 3) + 1;

	if (rsize > HID_MAX_BUFFER_SIZE)
		rsize = HID_MAX_BUFFER_SIZE;

	if (csize < rsize) {
		FUNC0("report %d is too short, (%d < %d)\n", report->id,
				csize, rsize);
		FUNC5(cdata + csize, 0, rsize - csize);
	}

	if ((hid->claimed & HID_CLAIMED_HIDDEV) && hid->hiddev_report_event)
		hid->hiddev_report_event(hid, report);
	if (hid->claimed & HID_CLAIMED_HIDRAW) {
		ret = FUNC4(hid, data, size);
		if (ret)
			goto out;
	}

	if (hid->claimed != HID_CLAIMED_HIDRAW && report->maxfield) {
		for (a = 0; a < report->maxfield; a++)
			FUNC2(hid, report->field[a], cdata, interrupt);
		hdrv = hid->driver;
		if (hdrv && hdrv->report)
			hdrv->report(hid, report);
	}

	if (hid->claimed & HID_CLAIMED_INPUT)
		FUNC3(hid, report);
out:
	return ret;
}