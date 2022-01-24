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
struct hid_device_id {int driver_data; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;
struct elan_drvdata {int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int ELAN_HAS_LED ; 
 int ENAVAIL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_CONNECT_DEFAULT ; 
 struct elan_drvdata* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hid_device*) ; 
 int FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,char*) ; 
 int FUNC4 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*) ; 
 int FUNC6 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct hid_device*,struct elan_drvdata*) ; 
 scalar_t__ FUNC8 (struct hid_device*) ; 

__attribute__((used)) static int FUNC9(struct hid_device *hdev, const struct hid_device_id *id)
{
	int ret;
	struct elan_drvdata *drvdata;

	drvdata = FUNC0(&hdev->dev, sizeof(*drvdata), GFP_KERNEL);

	if (!drvdata)
		return -ENOMEM;

	FUNC7(hdev, drvdata);

	ret = FUNC6(hdev);
	if (ret) {
		FUNC3(hdev, "Hid Parse failed\n");
		return ret;
	}

	ret = FUNC4(hdev, HID_CONNECT_DEFAULT);
	if (ret) {
		FUNC3(hdev, "Hid hw start failed\n");
		return ret;
	}

	if (FUNC8(hdev))
		return 0;

	if (!drvdata->input) {
		FUNC3(hdev, "Input device is not registered\n");
		ret = -ENAVAIL;
		goto err;
	}

	ret = FUNC2(hdev);
	if (ret)
		goto err;

	if (id->driver_data & ELAN_HAS_LED) {
		ret = FUNC1(hdev);
		if (ret)
			goto err;
	}

	return 0;
err:
	FUNC5(hdev);
	return ret;
}