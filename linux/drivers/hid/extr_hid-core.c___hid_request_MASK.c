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
typedef  int /*<<< orphan*/  u32 ;
struct hid_report {int /*<<< orphan*/  type; int /*<<< orphan*/  id; } ;
struct hid_device {TYPE_1__* ll_driver; } ;
struct TYPE_2__ {int (* raw_request ) (struct hid_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HID_REQ_GET_REPORT ; 
 int HID_REQ_SET_REPORT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 char* FUNC1 (struct hid_report*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_report*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_report*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct hid_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct hid_device *hid, struct hid_report *report,
		int reqtype)
{
	char *buf;
	int ret;
	u32 len;

	buf = FUNC1(report, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	len = FUNC4(report);

	if (reqtype == HID_REQ_SET_REPORT)
		FUNC3(report, buf);

	ret = hid->ll_driver->raw_request(hid, report->id, buf, len,
					  report->type, reqtype);
	if (ret < 0) {
		FUNC0("unable to complete request: %d\n", ret);
		goto out;
	}

	if (reqtype == HID_REQ_GET_REPORT)
		FUNC2(hid, report->type, buf, ret, 0);

	ret = 0;

out:
	FUNC5(buf);
	return ret;
}