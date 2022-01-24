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
struct hid_usage {int /*<<< orphan*/  hid; } ;
struct hid_device {int /*<<< orphan*/  debug_wait; } ;
typedef  int __s32 ;

/* Variables and functions */
 int HID_DEBUG_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct hid_device *hdev, struct hid_usage *usage, __s32 value)
{
	char *buf;
	int len;

	buf = FUNC1(usage->hid, NULL);
	if (!buf)
		return;
	len = FUNC4(buf);
	FUNC3(buf + len, HID_DEBUG_BUFSIZE - len - 1, " = %d\n", value);

	FUNC0(hdev, buf);

	FUNC2(buf);
	FUNC5(&hdev->debug_wait);
}