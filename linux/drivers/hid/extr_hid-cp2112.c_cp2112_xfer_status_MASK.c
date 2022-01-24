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
struct cp2112_device {int xfer_status; int /*<<< orphan*/  xfer_avail; struct hid_device* hdev; } ;

/* Variables and functions */
 int CP2112_TRANSFER_STATUS_REQUEST ; 
 int /*<<< orphan*/  HID_OUTPUT_REPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hid_device*,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cp2112_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct cp2112_device *dev)
{
	struct hid_device *hdev = dev->hdev;
	u8 buf[2];
	int ret;

	buf[0] = CP2112_TRANSFER_STATUS_REQUEST;
	buf[1] = 0x01;
	FUNC0(&dev->xfer_avail, 0);

	ret = FUNC1(hdev, buf, 2, HID_OUTPUT_REPORT);
	if (ret < 0) {
		FUNC3(hdev, "Error requesting status: %d\n", ret);
		return ret;
	}

	ret = FUNC2(dev, &dev->xfer_avail);
	if (ret)
		return ret;

	return dev->xfer_status;
}