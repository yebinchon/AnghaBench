#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wacom_wac {unsigned char* data; int num_contacts_left; TYPE_1__* shared; struct input_dev* touch_input; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  touch_down; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_ORIENTATION ; 
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MINOR ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  SW_MUTE_DEVICE ; 
 int FUNC0 (unsigned char*) ; 
 unsigned char FUNC1 (struct input_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct input_dev*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*) ; 
 int FUNC9 (int,int) ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wacom_wac*) ; 

__attribute__((used)) static void FUNC12(struct wacom_wac *wacom)
{
	const int finger_touch_len = 8;
	const int finger_frames = 4;
	const int finger_frame_len = 43;

	struct input_dev *touch_input = wacom->touch_input;
	unsigned char *data = wacom->data;
	int num_contacts_left = 5;
	int i, j;

	for (i = 0; i < finger_frames; i++) {
		unsigned char *frame = &data[i*finger_frame_len + 109];
		int current_num_contacts = frame[0] & 0x7F;
		int contacts_to_send;

		if (!(frame[0] & 0x80))
			continue;

		/*
		 * First packet resets the counter since only the first
		 * packet in series will have non-zero current_num_contacts.
		 */
		if (current_num_contacts)
			wacom->num_contacts_left = current_num_contacts;

		contacts_to_send = FUNC10(num_contacts_left, wacom->num_contacts_left);

		for (j = 0; j < contacts_to_send; j++) {
			unsigned char *touch = &frame[j*finger_touch_len + 1];
			int slot = FUNC2(touch_input, touch[0]);
			int x = FUNC0(&touch[2]);
			int y = FUNC0(&touch[4]);
			int w = touch[6] * FUNC1(touch_input, ABS_MT_POSITION_X);
			int h = touch[7] * FUNC1(touch_input, ABS_MT_POSITION_Y);

			if (slot < 0)
				continue;

			FUNC4(touch_input, slot);
			FUNC3(touch_input, MT_TOOL_FINGER, touch[1] & 0x01);
			FUNC6(touch_input, ABS_MT_POSITION_X, x);
			FUNC6(touch_input, ABS_MT_POSITION_Y, y);
			FUNC6(touch_input, ABS_MT_TOUCH_MAJOR, FUNC9(w, h));
			FUNC6(touch_input, ABS_MT_TOUCH_MINOR, FUNC10(w, h));
			FUNC6(touch_input, ABS_MT_ORIENTATION, w > h);
		}

		FUNC5(touch_input);

		wacom->num_contacts_left -= contacts_to_send;
		if (wacom->num_contacts_left <= 0) {
			wacom->num_contacts_left = 0;
			wacom->shared->touch_down = FUNC11(wacom);
			FUNC8(touch_input);
		}
	}

	if (wacom->num_contacts_left == 0) {
		// Be careful that we don't accidentally call input_sync with
		// only a partial set of fingers of processed
		FUNC7(touch_input, SW_MUTE_DEVICE, !(data[281] >> 7));
		FUNC8(touch_input);
	}

}