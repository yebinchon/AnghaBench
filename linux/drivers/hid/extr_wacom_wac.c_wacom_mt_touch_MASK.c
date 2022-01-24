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
struct TYPE_4__ {int /*<<< orphan*/  touch_down; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 scalar_t__ MTTPC ; 
 scalar_t__ MTTPC_B ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int WACOM_BYTES_PER_MT_PACKET ; 
 int FUNC0 (unsigned char*) ; 
 int FUNC1 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC8 (struct wacom_wac*) ; 

__attribute__((used)) static int FUNC9(struct wacom_wac *wacom)
{
	struct input_dev *input = wacom->touch_input;
	unsigned char *data = wacom->data;
	int i;
	int current_num_contacts = data[2];
	int contacts_to_send = 0;
	int x_offset = 0;

	/* MTTPC does not support Height and Width */
	if (wacom->features.type == MTTPC || wacom->features.type == MTTPC_B)
		x_offset = -4;

	/*
	 * First packet resets the counter since only the first
	 * packet in series will have non-zero current_num_contacts.
	 */
	if (current_num_contacts)
		wacom->num_contacts_left = current_num_contacts;

	/* There are at most 5 contacts per packet */
	contacts_to_send = FUNC6(5, wacom->num_contacts_left);

	for (i = 0; i < contacts_to_send; i++) {
		int offset = (WACOM_BYTES_PER_MT_PACKET + x_offset) * i + 3;
		bool touch = (data[offset] & 0x1) && FUNC7(wacom);
		int id = FUNC0(&data[offset + 1]);
		int slot = FUNC1(input, id);

		if (slot < 0)
			continue;

		FUNC3(input, slot);
		FUNC2(input, MT_TOOL_FINGER, touch);
		if (touch) {
			int x = FUNC0(&data[offset + x_offset + 7]);
			int y = FUNC0(&data[offset + x_offset + 9]);
			FUNC5(input, ABS_MT_POSITION_X, x);
			FUNC5(input, ABS_MT_POSITION_Y, y);
		}
	}
	FUNC4(input);

	wacom->num_contacts_left -= contacts_to_send;
	if (wacom->num_contacts_left <= 0) {
		wacom->num_contacts_left = 0;
		wacom->shared->touch_down = FUNC8(wacom);
	}
	return 1;
}