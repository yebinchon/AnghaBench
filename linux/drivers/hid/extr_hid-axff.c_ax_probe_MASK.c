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
struct hid_device_id {int dummy; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HID_CONNECT_DEFAULT ; 
 int HID_CONNECT_FF ; 
 int FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,char*) ; 
 int FUNC4 (struct hid_device*) ; 
 int FUNC5 (struct hid_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hid_device*) ; 
 int FUNC7 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct hid_device*,char*,int) ; 

__attribute__((used)) static int FUNC9(struct hid_device *hdev, const struct hid_device_id *id)
{
	int error;

	FUNC1(&hdev->dev, "ACRUX HID hardware probe...\n");

	error = FUNC7(hdev);
	if (error) {
		FUNC3(hdev, "parse failed\n");
		return error;
	}

	error = FUNC5(hdev, HID_CONNECT_DEFAULT & ~HID_CONNECT_FF);
	if (error) {
		FUNC3(hdev, "hw start failed\n");
		return error;
	}

	error = FUNC0(hdev);
	if (error) {
		/*
		 * Do not fail device initialization completely as device
		 * may still be partially operable, just warn.
		 */
		FUNC8(hdev,
			 "Failed to enable force feedback support, error: %d\n",
			 error);
	}

	/*
	 * We need to start polling device right away, otherwise
	 * it will go into a coma.
	 */
	error = FUNC4(hdev);
	if (error) {
		FUNC2(&hdev->dev, "hw open failed\n");
		FUNC6(hdev);
		return error;
	}

	return 0;
}