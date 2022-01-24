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
 int /*<<< orphan*/  FEATURE_KBD_REPORT_ID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int FUNC0 (struct hid_device*,int /*<<< orphan*/ ,unsigned char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hid_device *hdev, u8 *buf, size_t buf_size)
{
	unsigned char *dmabuf;
	int ret;

	dmabuf = FUNC2(buf, buf_size, GFP_KERNEL);
	if (!dmabuf)
		return -ENOMEM;

	ret = FUNC0(hdev, FEATURE_KBD_REPORT_ID, dmabuf,
				 buf_size, HID_FEATURE_REPORT,
				 HID_REQ_SET_REPORT);
	FUNC1(dmabuf);

	return ret;
}