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
struct hid_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned char HID_OUTPUT_REPORT ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int FUNC0 (struct hid_device*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (struct hid_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hid_device *hdev, u8 *data, size_t count,
			     unsigned char report_type)
{
	u8 *buf;
	int ret;

	buf = FUNC3(data, count, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	if (report_type == HID_OUTPUT_REPORT)
		ret = FUNC0(hdev, buf, count);
	else
		ret = FUNC1(hdev, buf[0], buf, count, report_type,
				HID_REQ_SET_REPORT);

	FUNC2(buf);
	return ret;
}