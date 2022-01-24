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
 int FEATURE_KBD_REPORT_ID ; 
 int FUNC0 (struct hid_device*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct hid_device *hdev)
{
	u8 buf[] = { FEATURE_KBD_REPORT_ID, 0x41, 0x53, 0x55, 0x53, 0x20, 0x54,
		     0x65, 0x63, 0x68, 0x2e, 0x49, 0x6e, 0x63, 0x2e, 0x00 };
	int ret;

	ret = FUNC0(hdev, buf, sizeof(buf));
	if (ret < 0)
		FUNC1(hdev, "Asus failed to send init command: %d\n", ret);

	return ret;
}