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
struct cp2112_usb_config_report {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP2112_USB_CONFIG ; 
 int EIO ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int FUNC0 (struct hid_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct hid_device *hdev,
				 struct cp2112_usb_config_report *cfg)
{
	int ret;

	ret = FUNC0(hdev, CP2112_USB_CONFIG, (u8 *)cfg, sizeof(*cfg),
			     HID_FEATURE_REPORT);
	if (ret != sizeof(*cfg)) {
		FUNC1(hdev, "error reading usb config: %d\n", ret);
		if (ret < 0)
			return ret;
		return -EIO;
	}

	return 0;
}