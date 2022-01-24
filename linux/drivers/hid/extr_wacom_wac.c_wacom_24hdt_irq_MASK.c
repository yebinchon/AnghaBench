#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ type; } ;
struct wacom_wac {unsigned char* data; int num_contacts_left; TYPE_2__* shared; TYPE_1__ features; struct input_dev* touch_input; } ;
struct input_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ touch_down; int /*<<< orphan*/  is_touch_on; scalar_t__ has_mute_touch_switch; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_ORIENTATION ; 
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_WIDTH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_WIDTH_MINOR ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 scalar_t__ WACOM_27QHDT ; 
 int WACOM_BYTES_PER_24HDT_PACKET ; 
 int WACOM_BYTES_PER_QHDTHID_PACKET ; 
 int FUNC0 (unsigned char*) ; 
 int FUNC1 (struct input_dev*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,int,int,int) ; 
 int FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (struct wacom_wac*) ; 
 scalar_t__ FUNC9 (struct wacom_wac*) ; 

__attribute__((used)) static int FUNC10(struct wacom_wac *wacom)
{
	struct input_dev *input = wacom->touch_input;
	unsigned char *data = wacom->data;
	int i;
	int current_num_contacts = data[61];
	int contacts_to_send = 0;
	int num_contacts_left = 4; /* maximum contacts per packet */
	int byte_per_packet = WACOM_BYTES_PER_24HDT_PACKET;
	int y_offset = 2;

	if (wacom->shared->has_mute_touch_switch &&
	    !wacom->shared->is_touch_on) {
		if (!wacom->shared->touch_down)
			return 0;
	}

	if (wacom->features.type == WACOM_27QHDT) {
		current_num_contacts = data[63];
		num_contacts_left = 10;
		byte_per_packet = WACOM_BYTES_PER_QHDTHID_PACKET;
		y_offset = 0;
	}

	/*
	 * First packet resets the counter since only the first
	 * packet in series will have non-zero current_num_contacts.
	 */
	if (current_num_contacts)
		wacom->num_contacts_left = current_num_contacts;

	contacts_to_send = FUNC7(num_contacts_left, wacom->num_contacts_left);

	for (i = 0; i < contacts_to_send; i++) {
		int offset = (byte_per_packet * i) + 1;
		bool touch = (data[offset] & 0x1) && FUNC8(wacom);
		int slot = FUNC1(input, data[offset + 1]);

		if (slot < 0)
			continue;
		FUNC3(input, slot);
		FUNC2(input, MT_TOOL_FINGER, touch);

		if (touch) {
			int t_x = FUNC0(&data[offset + 2]);
			int t_y = FUNC0(&data[offset + 4 + y_offset]);

			FUNC5(input, ABS_MT_POSITION_X, t_x);
			FUNC5(input, ABS_MT_POSITION_Y, t_y);

			if (wacom->features.type != WACOM_27QHDT) {
				int c_x = FUNC0(&data[offset + 4]);
				int c_y = FUNC0(&data[offset + 8]);
				int w = FUNC0(&data[offset + 10]);
				int h = FUNC0(&data[offset + 12]);

				FUNC5(input, ABS_MT_TOUCH_MAJOR, FUNC7(w,h));
				FUNC5(input, ABS_MT_WIDTH_MAJOR,
						 FUNC7(w, h) + FUNC6(t_x, t_y, c_x, c_y));
				FUNC5(input, ABS_MT_WIDTH_MINOR, FUNC7(w, h));
				FUNC5(input, ABS_MT_ORIENTATION, w > h);
			}
		}
	}
	FUNC4(input);

	wacom->num_contacts_left -= contacts_to_send;
	if (wacom->num_contacts_left <= 0) {
		wacom->num_contacts_left = 0;
		wacom->shared->touch_down = FUNC9(wacom);
	}
	return 1;
}