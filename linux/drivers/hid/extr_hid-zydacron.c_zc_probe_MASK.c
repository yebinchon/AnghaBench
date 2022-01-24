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
struct zc_device {int dummy; } ;
struct hid_device_id {int dummy; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_CONNECT_DEFAULT ; 
 struct zc_device* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*) ; 
 int FUNC2 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,struct zc_device*) ; 

__attribute__((used)) static int FUNC5(struct hid_device *hdev, const struct hid_device_id *id)
{
	int ret;
	struct zc_device *zc;

	zc = FUNC0(&hdev->dev, sizeof(*zc), GFP_KERNEL);
	if (zc == NULL) {
		FUNC1(hdev, "can't alloc descriptor\n");
		return -ENOMEM;
	}

	FUNC4(hdev, zc);

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