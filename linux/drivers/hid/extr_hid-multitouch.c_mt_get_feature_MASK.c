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
typedef  int /*<<< orphan*/  u32 ;
struct hid_report {int /*<<< orphan*/  id; } ;
struct hid_device {int quirks; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int HID_QUIRK_NO_INIT_REPORTS ; 
 int /*<<< orphan*/  HID_REQ_GET_REPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (struct hid_report*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hid_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_report*) ; 
 int FUNC4 (struct hid_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct hid_device *hdev, struct hid_report *report)
{
	int ret;
	u32 size = FUNC3(report);
	u8 *buf;

	/*
	 * Do not fetch the feature report if the device has been explicitly
	 * marked as non-capable.
	 */
	if (hdev->quirks & HID_QUIRK_NO_INIT_REPORTS)
		return;

	buf = FUNC1(report, GFP_KERNEL);
	if (!buf)
		return;

	ret = FUNC2(hdev, report->id, buf, size,
				 HID_FEATURE_REPORT, HID_REQ_GET_REPORT);
	if (ret < 0) {
		FUNC0(&hdev->dev, "failed to fetch feature %d\n",
			 report->id);
	} else {
		ret = FUNC4(hdev, HID_FEATURE_REPORT, buf,
					   size, 0);
		if (ret)
			FUNC0(&hdev->dev, "failed to report feature\n");
	}

	FUNC5(buf);
}