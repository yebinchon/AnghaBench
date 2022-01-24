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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ENOMEM ; 
 int FEATURE_KBD_REPORT_ID ; 
 int /*<<< orphan*/  FEATURE_KBD_REPORT_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_REQ_GET_REPORT ; 
 int FUNC0 (struct hid_device*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*,int) ; 
 int FUNC2 (struct hid_device*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hid_device *hdev,
				  unsigned char *kbd_func)
{
	u8 buf[] = { FEATURE_KBD_REPORT_ID, 0x05, 0x20, 0x31, 0x00, 0x08 };
	u8 *readbuf;
	int ret;

	ret = FUNC0(hdev, buf, sizeof(buf));
	if (ret < 0) {
		FUNC1(hdev, "Asus failed to send configuration command: %d\n", ret);
		return ret;
	}

	readbuf = FUNC4(FEATURE_KBD_REPORT_SIZE, GFP_KERNEL);
	if (!readbuf)
		return -ENOMEM;

	ret = FUNC2(hdev, FEATURE_KBD_REPORT_ID, readbuf,
				 FEATURE_KBD_REPORT_SIZE, HID_FEATURE_REPORT,
				 HID_REQ_GET_REPORT);
	if (ret < 0) {
		FUNC1(hdev, "Asus failed to request functions: %d\n", ret);
		FUNC3(readbuf);
		return ret;
	}

	*kbd_func = readbuf[6];

	FUNC3(readbuf);
	return ret;
}