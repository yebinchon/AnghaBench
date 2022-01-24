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
struct hid_report {int dummy; } ;
struct hid_device {int product; } ;
struct alps_dev {int dummy; } ;

/* Variables and functions */
#define  HID_PRODUCT_ID_T4_BTNLESS 128 
 struct alps_dev* FUNC0 (struct hid_device*) ; 
 int FUNC1 (struct alps_dev*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct alps_dev*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct hid_device *hdev,
		struct hid_report *report, u8 *data, int size)
{
	int ret = 0;
	struct alps_dev *hdata = FUNC0(hdev);

	switch (hdev->product) {
	case HID_PRODUCT_ID_T4_BTNLESS:
		ret = FUNC1(hdata, data, size);
		break;
	default:
		ret = FUNC2(hdata, data, size);
		break;
	}
	return ret;
}