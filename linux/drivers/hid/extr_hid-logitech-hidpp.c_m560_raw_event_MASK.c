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
struct hidpp_device {int /*<<< orphan*/  input; int /*<<< orphan*/  vertical_wheel_counter; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_BACK ; 
 int /*<<< orphan*/  BTN_FORWARD ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int EINVAL ; 
 int M560_MOUSE_BTN_LEFT ; 
 int M560_MOUSE_BTN_RIGHT ; 
 int M560_MOUSE_BTN_WHEEL_LEFT ; 
 int M560_MOUSE_BTN_WHEEL_RIGHT ; 
 int M560_SUB_ID ; 
 int /*<<< orphan*/  REL_HWHEEL ; 
 int /*<<< orphan*/  REL_HWHEEL_HI_RES ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int REPORT_ID_HIDPP_LONG ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*) ; 
 int FUNC1 (struct hid_device*,int*,int,int) ; 
 struct hidpp_device* FUNC2 (struct hid_device*) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hid_device *hdev, u8 *data, int size)
{
	struct hidpp_device *hidpp = FUNC2(hdev);

	/* sanity check */
	if (!hidpp->input) {
		FUNC0(hdev, "error in parameter\n");
		return -EINVAL;
	}

	if (size < 7) {
		FUNC0(hdev, "error in report\n");
		return 0;
	}

	if (data[0] == REPORT_ID_HIDPP_LONG &&
	    data[2] == M560_SUB_ID && data[6] == 0x00) {
		/*
		 * m560 mouse report for middle, forward and backward button
		 *
		 * data[0] = 0x11
		 * data[1] = device-id
		 * data[2] = 0x0a
		 * data[5] = 0xaf -> middle
		 *	     0xb0 -> forward
		 *	     0xae -> backward
		 *	     0x00 -> release all
		 * data[6] = 0x00
		 */

		switch (data[5]) {
		case 0xaf:
			FUNC5(hidpp->input, BTN_MIDDLE, 1);
			break;
		case 0xb0:
			FUNC5(hidpp->input, BTN_FORWARD, 1);
			break;
		case 0xae:
			FUNC5(hidpp->input, BTN_BACK, 1);
			break;
		case 0x00:
			FUNC5(hidpp->input, BTN_BACK, 0);
			FUNC5(hidpp->input, BTN_FORWARD, 0);
			FUNC5(hidpp->input, BTN_MIDDLE, 0);
			break;
		default:
			FUNC0(hdev, "error in report\n");
			return 0;
		}
		FUNC7(hidpp->input);

	} else if (data[0] == 0x02) {
		/*
		 * Logitech M560 mouse report
		 *
		 * data[0] = type (0x02)
		 * data[1..2] = buttons
		 * data[3..5] = xy
		 * data[6] = wheel
		 */

		int v;

		FUNC5(hidpp->input, BTN_LEFT,
			!!(data[1] & M560_MOUSE_BTN_LEFT));
		FUNC5(hidpp->input, BTN_RIGHT,
			!!(data[1] & M560_MOUSE_BTN_RIGHT));

		if (data[1] & M560_MOUSE_BTN_WHEEL_LEFT) {
			FUNC6(hidpp->input, REL_HWHEEL, -1);
			FUNC6(hidpp->input, REL_HWHEEL_HI_RES,
					 -120);
		} else if (data[1] & M560_MOUSE_BTN_WHEEL_RIGHT) {
			FUNC6(hidpp->input, REL_HWHEEL, 1);
			FUNC6(hidpp->input, REL_HWHEEL_HI_RES,
					 120);
		}

		v = FUNC3(FUNC1(hdev, data+3, 0, 12), 12);
		FUNC6(hidpp->input, REL_X, v);

		v = FUNC3(FUNC1(hdev, data+3, 12, 12), 12);
		FUNC6(hidpp->input, REL_Y, v);

		v = FUNC3(data[6], 8);
		if (v != 0)
			FUNC4(hidpp->input,
					&hidpp->vertical_wheel_counter, v);

		FUNC7(hidpp->input);
	}

	return 1;
}