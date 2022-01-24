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
struct hid_device {int dummy; } ;
typedef  int /*<<< orphan*/  report ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int FUNC0 (struct hid_device*,int,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hid_device *hdev)
{
	static const u8 report[] = { 0xf4, 0x42, 0x03, 0x00, 0x00 };
	u8 *buf;
	int ret;

	buf = FUNC2(report, sizeof(report), GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	ret = FUNC0(hdev, buf[0], buf, sizeof(report),
				  HID_FEATURE_REPORT, HID_REQ_SET_REPORT);

	FUNC1(buf);

	return ret;
}