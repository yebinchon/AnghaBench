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
struct hid_device {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ENOMEM ; 
#define  FEATURE_REPORT_ID 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*,int) ; 
 int FUNC1 (struct hid_device*,unsigned char,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (unsigned char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hid_device *hdev)
{
	int ret;
	static const unsigned char buf[] = {
		FEATURE_REPORT_ID, 0x00, 0x03, 0x01, 0x00
	};
	unsigned char *dmabuf = FUNC3(buf, sizeof(buf), GFP_KERNEL);

	if (!dmabuf) {
		ret = -ENOMEM;
		FUNC0(hdev, "Asus failed to alloc dma buf: %d\n", ret);
		return ret;
	}

	ret = FUNC1(hdev, dmabuf[0], dmabuf, sizeof(buf),
					HID_FEATURE_REPORT, HID_REQ_SET_REPORT);

	FUNC2(dmabuf);

	if (ret != sizeof(buf)) {
		FUNC0(hdev, "Asus failed to start multitouch: %d\n", ret);
		return ret;
	}

	return 0;
}