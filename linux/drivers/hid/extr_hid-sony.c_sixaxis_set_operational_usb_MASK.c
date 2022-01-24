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
struct sony_sc {int quirks; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_REQ_GET_REPORT ; 
 int SHANWAN_GAMEPAD ; 
 int /*<<< orphan*/  SIXAXIS_REPORT_0xF2_SIZE ; 
 int /*<<< orphan*/  SIXAXIS_REPORT_0xF5_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*) ; 
 struct sony_sc* FUNC1 (struct hid_device*) ; 
 int FUNC2 (struct hid_device*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct hid_device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int const,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hid_device *hdev)
{
	struct sony_sc *sc = FUNC1(hdev);
	const int buf_size =
		FUNC7(SIXAXIS_REPORT_0xF2_SIZE, SIXAXIS_REPORT_0xF5_SIZE);
	u8 *buf;
	int ret;

	buf = FUNC6(buf_size, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	ret = FUNC3(hdev, 0xf2, buf, SIXAXIS_REPORT_0xF2_SIZE,
				 HID_FEATURE_REPORT, HID_REQ_GET_REPORT);
	if (ret < 0) {
		FUNC0(hdev, "can't set operational mode: step 1\n");
		goto out;
	}

	/*
	 * Some compatible controllers like the Speedlink Strike FX and
	 * Gasia need another query plus an USB interrupt to get operational.
	 */
	ret = FUNC3(hdev, 0xf5, buf, SIXAXIS_REPORT_0xF5_SIZE,
				 HID_FEATURE_REPORT, HID_REQ_GET_REPORT);
	if (ret < 0) {
		FUNC0(hdev, "can't set operational mode: step 2\n");
		goto out;
	}

	/*
	 * But the USB interrupt would cause SHANWAN controllers to
	 * start rumbling non-stop, so skip step 3 for these controllers.
	 */
	if (sc->quirks & SHANWAN_GAMEPAD)
		goto out;

	ret = FUNC2(hdev, buf, 1);
	if (ret < 0) {
		FUNC4(hdev, "can't set operational mode: step 3, ignoring\n");
		ret = 0;
	}

out:
	FUNC5(buf);

	return ret;
}