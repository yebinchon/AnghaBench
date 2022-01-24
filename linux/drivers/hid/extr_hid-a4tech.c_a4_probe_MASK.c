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
struct hid_device_id {int /*<<< orphan*/  driver_data; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;
struct a4tech_sc {int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_CONNECT_DEFAULT ; 
 struct a4tech_sc* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*) ; 
 int FUNC2 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,struct a4tech_sc*) ; 

__attribute__((used)) static int FUNC5(struct hid_device *hdev, const struct hid_device_id *id)
{
	struct a4tech_sc *a4;
	int ret;

	a4 = FUNC0(&hdev->dev, sizeof(*a4), GFP_KERNEL);
	if (a4 == NULL) {
		FUNC1(hdev, "can't alloc device descriptor\n");
		return -ENOMEM;
	}

	a4->quirks = id->driver_data;

	FUNC4(hdev, a4);

	ret = FUNC3(hdev);
	if (ret) {
		FUNC1(hdev, "parse failed\n");
		return ret;
	}

	ret = FUNC2(hdev, HID_CONNECT_DEFAULT);
	if (ret) {
		FUNC1(hdev, "hw start failed\n");
		return ret;
	}

	return 0;
}